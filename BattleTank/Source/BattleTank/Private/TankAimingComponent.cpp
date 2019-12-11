// Fill out your copyright notice in the Description page of Project Settings.


#include "TankAimingComponent.h"
#include "TankBarrel.h"
#include "TankTurret.h"


// Sets default values for this component's properties
UTankAimingComponent::UTankAimingComponent()
{
	// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = false;

	// ...
}
void UTankAimingComponent::AimAt(FVector HitLocation, float LaunchSpeed)
{

    // UE_LOG(LogTemp, Warning, TEXT( "AimAt called!!" ) );
    // auto OurTankName = GetOwner()->GetName();
    // auto BarrelLocation = Barrel->GetComponentLocation().ToString();
    if(!Barrel){return;}
    // UE_LOG(LogTemp, Warning, TEXT( "Barrel exists" ) );
    FVector OutLaunchVelocity(0);
    FVector StartLocation=Barrel->GetSocketLocation(FName("Projectile"));

    bool bHaveAimSolution = UGameplayStatics::SuggestProjectileVelocity(
        this,
        OutLaunchVelocity,
        StartLocation,
        HitLocation,
        LaunchSpeed,
        false,
        0,
        0,
        ESuggestProjVelocityTraceOption::DoNotTrace // parameter must be present to prevent bug
        );

    if(bHaveAimSolution){
      // turn into a unit vector
      auto AimDirection = OutLaunchVelocity.GetSafeNormal();
      MoveBarrelTowards(AimDirection);
    }
}
void UTankAimingComponent::MoveBarrelTowards(FVector AimDirection)
{
  if(!Barrel || !Turret){return;}
  // difference between current barrel rotation and aim direction
  auto BarrelRotation = Barrel->GetForwardVector().Rotation();
  auto AimAsRotator = AimDirection.Rotation();

  auto DeltaRotator = AimAsRotator - BarrelRotation;

  // UE_LOG(LogTemp, Warning, TEXT( "AimAsRotator %s" ), *AimAsRotator.ToString());

  Barrel->Elevate(DeltaRotator.Pitch); // todo remove magic number
  Turret->Rotate(DeltaRotator.Yaw);
}
void UTankAimingComponent::Initialiase(UTankBarrel* BarrelToSet, UTankTurret* TurretToSet)
{
  Barrel = BarrelToSet;
  Turret = TurretToSet;
}


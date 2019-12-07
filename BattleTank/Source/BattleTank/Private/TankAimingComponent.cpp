// Fill out your copyright notice in the Description page of Project Settings.


#include "TankAimingComponent.h"


// Sets default values for this component's properties
UTankAimingComponent::UTankAimingComponent()
{
	// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = true;

	// ...
}

void UTankAimingComponent::SetBarrelReference(UStaticMeshComponent* BarrelToSet)
{
  Barrel = BarrelToSet;

}

void UTankAimingComponent::AimAt(FVector HitLocation, float LaunchSpeed)
{
    // auto OurTankName = GetOwner()->GetName();
    // auto BarrelLocation = Barrel->GetComponentLocation().ToString();
    // UE_LOG(LogTemp, Warning, TEXT("%s aiming at %s from %s"), *OurTankName, *HitLocation.ToString(), *BarrelLocation);
  if(!Barrel){return;}
    FVector OutLaunchVelocity(0);
    FVector StartLocation=Barrel->GetSocketLocation(FName("Projectile"));

    bool bHaveAimSolution = UGameplayStatics::SuggestProjectileVelocity(
        this,
        OutLaunchVelocity,
        StartLocation,
        HitLocation,
        LaunchSpeed,
        ESuggestProjVelocityTraceOption::DoNotTrace
        );

    if(bHaveAimSolution){
      // turn into a unit vector
      auto AimDirection = OutLaunchVelocity.GetSafeNormal();
      MoveBarrelTowards(AimDirection);
      auto TankName = GetOwner()->GetName();
      UE_LOG(LogTemp, Warning, TEXT("%s Aiming at %s"), *TankName, *AimDirection.ToString());
    }

}
void UTankAimingComponent::MoveBarrelTowards(FVector AimDirection)
{
  // difference between current barrel rotation and aim direction
  auto BarrelRotation = Barrel->GetForwardVector().Rotation();
  auto AimAsRotator = AimDirection.Rotation();

  auto DeltaRotator = AimAsRotator - BarrelRotation;

  UE_LOG(LogTemp, Warning, TEXT( "AimAsRotator %s" ), *AimAsRotator.ToString());

}

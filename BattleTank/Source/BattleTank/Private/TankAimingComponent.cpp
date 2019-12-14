// Fill out your copyright notice in the Description page of Project Settings.


#include "TankAimingComponent.h"
#include "TankBarrel.h"
#include "Projectile.h"
#include "TankTurret.h"


// Sets default values for this component's properties
UTankAimingComponent::UTankAimingComponent()
{
	// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = true;

	// ...
}
void UTankAimingComponent::AimAt(FVector HitLocation)
{

    // auto OurTankName = GetOwner()->GetName();
    // auto BarrelLocation = Barrel->GetComponentLocation().ToString();
    if(!ensure(Barrel)){return;}
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
  if(!ensure(Barrel && Turret)){return;}
  // difference between current barrel rotation and aim direction
  auto BarrelRotation = Barrel->GetForwardVector().Rotation();
  auto AimAsRotator = AimDirection.Rotation();

  auto DeltaRotator = AimAsRotator - BarrelRotation;


  Barrel->Elevate(DeltaRotator.Pitch); // todo remove magic number
  Turret->Rotate(DeltaRotator.Yaw);
}

void UTankAimingComponent::BeginPlay()
{
  // Super::BeginPlay();
  LastFireTime = GetWorld()->GetTimeSeconds();
}


void UTankAimingComponent::TickComponent(float DeltaTime, enum ELevelTick TickType, FActorComponentTickFunction *ThisTickFunction)
{
  UE_LOG(LogTemp, Warning, TEXT( "TickComponent ticking" ) );
  if( (GetWorld()->GetTimeSeconds() - LastFireTime) > ReloadTimeInSeconds )
  {
    FiringState = EFiringState::Reloading;
  }
  // TODO: Handle aiming and locked states

}
void UTankAimingComponent::Initialiase(UTankBarrel* BarrelToSet, UTankTurret* TurretToSet)
{
  Barrel = BarrelToSet;
  Turret = TurretToSet;
}
void UTankAimingComponent::Fire()
{
  if(FiringState!=EFiringState::Reloading){

    // spawn a projectile at the socket loaction
    if(!ensure(Barrel)){return;}
    if(!ensure(ProjectileBluePrint)){return;}
    auto Projectile = GetWorld()->SpawnActor<AProjectile>(
        ProjectileBluePrint,
        Barrel->GetSocketLocation(FName("Projectile")),
        Barrel->GetSocketRotation(FName("Projectile"))
        );
    Projectile->LaunchProjectile(LaunchSpeed);
    LastFireTime = GetWorld()->GetTimeSeconds();

  }
}

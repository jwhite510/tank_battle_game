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
      AimDirection = OutLaunchVelocity.GetSafeNormal();
      MoveBarrelTowards(AimDirection);
    }
}
void UTankAimingComponent::MoveBarrelTowards(FVector AimDirection_in)
{
  if(!ensure(Barrel && Turret)){return;}
  // difference between current barrel rotation and aim direction
  auto BarrelRotation = Barrel->GetForwardVector().Rotation();
  auto AimAsRotator = AimDirection_in.Rotation();

  auto DeltaRotator = AimAsRotator - BarrelRotation;

  if(FMath::Abs(DeltaRotator.Yaw) < 180)
  {
    Turret->Rotate(DeltaRotator.Yaw);
  }
  else
  {
    Turret->Rotate(-DeltaRotator.Yaw);
  }
  Barrel->Elevate(DeltaRotator.Pitch); // todo remove magic number

}

void UTankAimingComponent::BeginPlay()
{
  // Super::BeginPlay();
  LastFireTime = GetWorld()->GetTimeSeconds();
}

bool UTankAimingComponent::IsBarrelMoving()
{

  if(!ensure(Barrel)){return false;}

  FVector BarrelForward = Barrel->GetForwardVector();
  return !BarrelForward.Equals(AimDirection, 0.01); // vectors are equal

}
void UTankAimingComponent::TickComponent(float DeltaTime, enum ELevelTick TickType, FActorComponentTickFunction *ThisTickFunction)
{
  if(RoundsLeft <=0){
    FiringState=EFiringState::OutOfAmmo;
  }
  else if( (GetWorld()->GetTimeSeconds() - LastFireTime) < ReloadTimeInSeconds )
  {
    FiringState = EFiringState::Reloading;
  }
  else if(IsBarrelMoving())
  {
    FiringState = EFiringState::Aiming;
  }
  else{
    FiringState = EFiringState::Locked;
  }
  // TODO: Handle aiming and locked states

}
EFiringState UTankAimingComponent::GetFiringState() const
{
  return FiringState;

}
void UTankAimingComponent::Initialiase(UTankBarrel* BarrelToSet, UTankTurret* TurretToSet)
{
  Barrel = BarrelToSet;
  Turret = TurretToSet;
}
void UTankAimingComponent::Fire()
{
  if(FiringState==EFiringState::Locked || FiringState==EFiringState::Aiming){

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
    RoundsLeft--;

  }
}
int32 UTankAimingComponent::GetRoundsLeft() const
{
  return RoundsLeft;
}

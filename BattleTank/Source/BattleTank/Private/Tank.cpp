// Fill out your copyright notice in the Description page of Project Settings.


#include "TankAimingComponent.h"
#include "TankBarrel.h"
#include "Projectile.h"
#include "Tank.h"

void ATank::BeginPlay()
{
  Super::BeginPlay(); // needed for blueprint begin play

  TankAimingComponent = FindComponentByClass<UTankAimingComponent>();
}

// Sets default values
ATank::ATank()
{
 	// Set this pawn to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;

}
// Called to bind functionality to input
void ATank::AimAt(FVector HitLocation)
{
    UE_LOG(LogTemp, Warning, TEXT( "Tank::AimAt is being called" ));
    if(!ensure(TankAimingComponent)){return;}
    TankAimingComponent->AimAt(HitLocation, LaunchSpeed);
}
void ATank::Fire()
{
  if(!ensure(Barrel)){return;}
  bool isReloaded = (GetWorld()->GetTimeSeconds() - LastFireTime) > ReloadTimeInSeconds;
  if(isReloaded){

  // spawn a projectile at the socket loaction
  auto Projectile = GetWorld()->SpawnActor<AProjectile>(
    ProjectileBluePrint,
    Barrel->GetSocketLocation(FName("Projectile")),
    Barrel->GetSocketRotation(FName("Projectile"))
    );
  Projectile->LaunchProjectile(LaunchSpeed);
  LastFireTime = GetWorld()->GetTimeSeconds();

  }
}

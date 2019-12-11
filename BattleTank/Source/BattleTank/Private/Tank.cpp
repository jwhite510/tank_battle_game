// Fill out your copyright notice in the Description page of Project Settings.


#include "TankAimingComponent.h"
#include "TankBarrel.h"
#include "Projectile.h"
#include "Tank.h"


// Sets default values
ATank::ATank()
{
 	// Set this pawn to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;

}
// Called to bind functionality to input
void ATank::AimAt(FVector HitLocation)
{
    TankAimingComponent->AimAt(HitLocation, LaunchSpeed);
}
void ATank::Fire()
{
  bool isReloaded = (GetWorld()->GetTimeSeconds() - LastFireTime) > ReloadTimeInSeconds;
  if(Barrel && isReloaded){

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

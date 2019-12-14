// Fill out your copyright notice in the Description page of Project Settings.


#include "TankBarrel.h"
#include "Projectile.h"
#include "Tank.h"

void ATank::BeginPlay()
{
  Super::BeginPlay(); // needed for blueprint begin play
}

// Sets default values
ATank::ATank()
{
 	// Set this pawn to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;

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

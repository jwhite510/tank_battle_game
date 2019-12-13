// Fill out your copyright notice in the Description page of Project Settings.


#include "TankAimingComponent.h"
#include "TankBarrel.h"
#include "Projectile.h"
#include "Tank.h"

void ATank::BeginPlay()
{
  Super::BeginPlay(); // needed for blueprint begin play
  UE_LOG(LogTemp, Warning, TEXT( "%s c++ BeginPlay called" ), *GetName() );

}

// Sets default values
ATank::ATank()
{
 	// Set this pawn to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;
        UE_LOG(LogTemp, Warning, TEXT( "%s c++ construct called" ), *GetName() );

}
// Called to bind functionality to input
void ATank::AimAt(FVector HitLocation)
{
    if(!TankAimingComponent){return;}
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

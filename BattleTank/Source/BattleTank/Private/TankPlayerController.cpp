// Fill out your copyright notice in the Description page of Project Settings.


#include "TankPlayerController.h"


void ATankPlayerController::BeginPlay()
{
  Super::BeginPlay();

        auto ControlledTank = GetControlledTank();
        if(!ControlledTank){
          UE_LOG(LogTemp, Warning, TEXT( "PlayerController not possessing a tank" ));
        }
        else{
          UE_LOG(LogTemp, Warning, TEXT( "PlayerController possessing %s" ), *ControlledTank->GetName());
        }


}

void ATankPlayerController::Tick(float DeltaTime)
{
  Super::Tick(DeltaTime);
  // AimTowardsCrossHair();
}

ATank* ATankPlayerController::GetControlledTank() const
{
  return Cast<ATank>(GetPawn());
}

void ATankPlayerController::AimTowardsCrossHair()
{
  if(!GetControlledTank()){ return; }

  // get world location through crosshair
  // if it hits something
    // tell the control tank to aim at this point

}

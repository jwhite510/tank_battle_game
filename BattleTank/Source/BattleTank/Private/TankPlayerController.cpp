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
  AimTowardsCrossHair();
}

ATank* ATankPlayerController::GetControlledTank() const
{
  return Cast<ATank>(GetPawn());
}

void ATankPlayerController::AimTowardsCrossHair()
{
  if(!GetControlledTank()){ return; }

  FVector OutHitLocation; // out parameter
  // get world location through crosshair
  if(GetSightRayHitLocation(OutHitLocation))
  {
    // UE_LOG(LogTemp, Warning, TEXT("Hit Location: %s"), *OutHitLocation.ToString());
  }
  // if it hits something
    // tell the control tank to aim at this point

}
bool ATankPlayerController::GetSightRayHitLocation(FVector& HitLocationIn) const
{
  // find the crosshair position
  int32 ViewportSizeX, ViewportSizeY;
  GetViewportSize(ViewportSizeX, ViewportSizeY);
  auto ScreenLocation = FVector2D(ViewportSizeX*CrossHairXLocation, ViewportSizeY*CrossHairYLocation);
  // de - projection screen position of the crosshair to a world direction

  FVector WorldLocationOut;
  FVector WorldDirectionOut;
  if(DeprojectScreenPositionToWorld( ScreenLocation.X, ScreenLocation.Y, WorldLocationOut, WorldDirectionOut)){
    UE_LOG(LogTemp, Warning, TEXT( "WorldDirectionOut: %s" ), *WorldDirectionOut.ToString());
  }


  // line trace through that direction, and see what we hit (up to max range)
  HitLocationIn = FVector(1.0);
  return true;
}

// Fill out your copyright notice in the Description page of Project Settings.


#include "TankPlayerController.h"
#include "TankAimingComponent.h"

void ATankPlayerController::BeginPlay()
{

  Super::BeginPlay();
  auto AimingComponent = GetPawn()->FindComponentByClass<UTankAimingComponent>();
  if(!ensure(AimingComponent)) { return; }
  FoundAimingComponent(AimingComponent);
}
void ATankPlayerController::Tick(float DeltaTime)
{
  Super::Tick(DeltaTime);
  AimTowardsCrossHair();
}
void ATankPlayerController::AimTowardsCrossHair()
{
  if(!GetPawn()){return;} // if not possessing
  auto AimingComponent = GetPawn()->FindComponentByClass<UTankAimingComponent>();
  if(!ensure(AimingComponent)) { return; }

  FVector OutHitLocation; // out parameter
  // get world location through crosshair
  if(GetSightRayHitLocation(OutHitLocation))
  {
    AimingComponent->AimAt(OutHitLocation);
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

  FVector LookDirection;
  if(GetLookDirection(ScreenLocation, LookDirection))
  {
    // line trace through that direction, and see what we hit (up to max range)
    GetLookVectorHitLocation(LookDirection, HitLocationIn);
  }
  return true;
}
bool ATankPlayerController::GetLookDirection(FVector2D ScreenLocation, FVector& LookDirection) const
{
  FVector CameraWorldLocation; // for discarding
  return DeprojectScreenPositionToWorld(
      ScreenLocation.X,
      ScreenLocation.Y,
      CameraWorldLocation,
      LookDirection
      );
}
bool ATankPlayerController::GetLookVectorHitLocation(FVector LookDirection, FVector& HitLocation) const
{
  FHitResult HitResult;
  auto StartLocation = PlayerCameraManager->GetCameraLocation();
  auto EndLocation = StartLocation + (LookDirection*LineTraceRange);
  if(GetWorld()->LineTraceSingleByChannel(
      HitResult, // Out hit
      StartLocation, // start
      EndLocation, // end
      ECollisionChannel::ECC_Visibility)
      )
  {
    HitLocation = HitResult.Location;
    return true;
  }
  HitLocation = FVector(0);
  return false;
}

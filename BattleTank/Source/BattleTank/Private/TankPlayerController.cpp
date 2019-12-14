// Fill out your copyright notice in the Description page of Project Settings.


#include "TankAimingComponent.h"
#include "Tank.h"
#include "TankPlayerController.h"

void ATankPlayerController::BeginPlay()
{

  Super::BeginPlay();
  auto AimingComponent = GetControlledTank()->FindComponentByClass<UTankAimingComponent>();
  if(ensure(AimingComponent))
  {
    FoundAimingComponent(AimingComponent);
  }
  else
  {
    UE_LOG(LogTemp, Warning, TEXT( "Player Controller cant find aiming componenet at BeginPlay"));
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
  if(!ensure(GetControlledTank())){ return; }

  FVector OutHitLocation; // out parameter
  // get world location through crosshair
  if(GetSightRayHitLocation(OutHitLocation))
  {
    GetControlledTank()->AimAt(OutHitLocation);
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

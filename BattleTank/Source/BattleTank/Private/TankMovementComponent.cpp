// Fill out your copyright notice in the Description page of Project Settings.


#include "TankMovementComponent.h"
#include "TankTrack.h"

void UTankMovementComponent::Initialiase(UTankTrack* LeftTrackToSet, UTankTrack* RightTrackToSet)
{
  LeftTrack = LeftTrackToSet;
  RightTrack = RightTrackToSet;
}
void UTankMovementComponent::IntendMoveForward(float Throw)
{
  if(!LeftTrack || !RightTrack){ return; }
  LeftTrack->SetThrottle(Throw);
  RightTrack->SetThrottle(Throw);
  // TODO prevent double-speed due to dual control use
}
void UTankMovementComponent::IntendTurnRight(float Throw)
{
  if(!LeftTrack || !RightTrack){ return; }
  LeftTrack->SetThrottle(Throw);
  RightTrack->SetThrottle(-Throw);
  // TODO prevent double-speed due to dual control use
}
void UTankMovementComponent::RequestDirectMove(const FVector& MoveVelocity, bool bForceMaxSpeed)
{
  // no need to call super as were replacing the functionality
  auto TankName = GetOwner()->GetName();
  auto MoveVelocityString = MoveVelocity.ToString();
  UE_LOG(LogTemp, Warning, TEXT( "%s vectoring to %s" ), *TankName, *MoveVelocityString);
}

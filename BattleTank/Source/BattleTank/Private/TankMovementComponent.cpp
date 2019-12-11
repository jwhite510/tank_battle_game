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
  auto TankForward = GetOwner()->GetActorForwardVector().GetSafeNormal();
  auto AIForwardIntention = MoveVelocity.GetSafeNormal();

  float ForwardThrow = FVector::DotProduct(TankForward, AIForwardIntention);
  IntendMoveForward(ForwardThrow);

  float RightThrow = FVector::CrossProduct(TankForward, AIForwardIntention).Z;

  IntendTurnRight(RightThrow);

  // UE_LOG(LogTemp, Warning, TEXT( "Right %f, Forward %f" ), RightThrow, ForwardThrow);
}

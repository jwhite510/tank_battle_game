// Fill out your copyright notice in the Description page of Project Settings.


#include "TankTrack.h"


UTankTrack::UTankTrack()
{
  PrimaryComponentTick.bCanEverTick = true;
}

void UTankTrack::SetThrottle(float Throttle)
{

  auto ForceApplied = GetForwardVector()*Throttle*TrackMaxDrivingForce;
  auto ForceLocation = GetComponentLocation();
  auto TankRoot = Cast<UPrimitiveComponent>(GetOwner()->GetRootComponent());
  // UE_LOG(LogTemp, Warning, TEXT("set throttle applied %s"), *ForceApplied.ToString());
  TankRoot->AddForceAtLocation(ForceApplied, ForceLocation);
}

void UTankTrack::TickComponent(float DeltaTime, enum ELevelTick TickType, FActorComponentTickFunction *ThisTickFunction)
{

  // calculate the slippage speed
  auto SlippageSpeed = FVector::DotProduct(GetRightVector(), GetComponentVelocity());

  auto CorrectionAcceleration = -SlippageSpeed / DeltaTime * GetRightVector();

  // calculate and apply sideways force
  auto TankRoot = Cast<UStaticMeshComponent>(GetOwner()->GetRootComponent());
  auto CorrectionForce = (TankRoot->GetMass() * CorrectionAcceleration)/2; // two tracks
  TankRoot->AddForce(CorrectionForce);

}



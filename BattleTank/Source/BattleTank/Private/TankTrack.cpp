// Fill out your copyright notice in the Description page of Project Settings.


#include "TankTrack.h"


UTankTrack::UTankTrack()
{
  PrimaryComponentTick.bCanEverTick = false;
}


void UTankTrack::BeginPlay()
{

  Super::BeginPlay();
  OnComponentHit.AddDynamic(this, &UTankTrack::OnHit);
}

void UTankTrack::SetThrottle(float Throttle)
{
  CurrentThrottle = FMath::Clamp<float>(CurrentThrottle + Throttle, -1, 1);
}

void UTankTrack::DriveTrack()
{
  auto ForceApplied = GetForwardVector()*CurrentThrottle*TrackMaxDrivingForce;
  auto ForceLocation = GetComponentLocation();
  auto TankRoot = Cast<UPrimitiveComponent>(GetOwner()->GetRootComponent());
  // UE_LOG(LogTemp, Warning, TEXT("set throttle applied %s"), *ForceApplied.ToString());
  TankRoot->AddForceAtLocation(ForceApplied, ForceLocation);
}
void UTankTrack::ApplySideWaysForce()
{
  // calculate the slippage speed
  auto SlippageSpeed = FVector::DotProduct(GetRightVector(), GetComponentVelocity());

  auto DeltaTime = GetWorld()->GetDeltaSeconds();
  auto CorrectionAcceleration = -SlippageSpeed / DeltaTime * GetRightVector();

  // calculate and apply sideways force
  auto TankRoot = Cast<UStaticMeshComponent>(GetOwner()->GetRootComponent());
  auto CorrectionForce = (TankRoot->GetMass() * CorrectionAcceleration)/2; // two tracks
  TankRoot->AddForce(CorrectionForce);
}
void UTankTrack::OnHit( UPrimitiveComponent* HitComponent, AActor* OtherActor, UPrimitiveComponent* OtherComponent, FVector NormalImpulse, const FHitResult& Hit )
{

  // drive the tracks
  DriveTrack();
  // apply sideways force
  // UE_LOG(LogTemp, Warning, TEXT("OnHit called"));
  ApplySideWaysForce();
  CurrentThrottle = 0;
}



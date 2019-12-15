// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/StaticMeshComponent.h"
#include "TankTrack.generated.h"

/**
 *
 */
UCLASS( meta=(BlueprintSpawnableComponent))
class BATTLETANK_API UTankTrack : public UStaticMeshComponent
{
	GENERATED_BODY()

  public:
          UFUNCTION(BlueprintCallable, Category="Input")
          void SetThrottle(float Throttle);
          void DriveTrack();


          // max force per track
          UPROPERTY(EditDefaultsOnly, Category="Setup")
          float TrackMaxDrivingForce = 400000; // 40 ton tank and 1g acceleration

  private:
          UTankTrack();
          void ApplySideWaysForce();
          virtual void BeginPlay() override;

          UFUNCTION()
          void OnHit( UPrimitiveComponent* HitComponent, AActor* OtherActor, UPrimitiveComponent* OtherComponent, FVector NormalImpulse, const FHitResult& Hit );

          float CurrentThrottle = 0;

};

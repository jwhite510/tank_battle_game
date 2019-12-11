// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/PlayerController.h"
#include "TankPlayerController.generated.h"

/**
 * 
 */
class ATank;

UCLASS()
class BATTLETANK_API ATankPlayerController : public APlayerController
{
	GENERATED_BODY()

  public:

          virtual void BeginPlay() override;

          virtual void Tick(float DeltaTime) override;

  protected:
          UFUNCTION(BlueprintCallable, Category="Setup")
          ATank* GetControlledTank() const;

  private:

          // start the tank moving the barrel so a shot would hit where the crosshair intersects the world
          void AimTowardsCrossHair();

          UPROPERTY(EditDefaultsOnly)
          float CrossHairXLocation = 0.5;

          UPROPERTY(EditDefaultsOnly)
          float CrossHairYLocation = 0.3333;

          bool GetSightRayHitLocation(FVector& HitLocationIn) const;

          bool GetLookDirection(FVector2D ScreenLocation, FVector& LookDirection) const;

          UPROPERTY(EditDefaultsOnly)
          float LineTraceRange = 1000000.;

          bool GetLookVectorHitLocation(FVector LookDirection, FVector& HitLocation) const;
};

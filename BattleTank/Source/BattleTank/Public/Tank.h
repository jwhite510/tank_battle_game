// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Pawn.h"
#include "Tank.generated.h"

class UTankBarrel; // forward declaration
class UTankTurret; // forward declaration
class AProjectile;
class UTankMovementComponent;

UCLASS()
class BATTLETANK_API ATank : public APawn
{
	GENERATED_BODY()

public:
	// Sets default values for this pawn's properties
	ATank();

        virtual void BeginPlay() override;

        UFUNCTION(BlueprintCallable)
        void Fire();


protected:

        UPROPERTY(BlueprintReadOnly, Category="Firing")
        UTankMovementComponent* TankMovementComponent = nullptr;

private:

        UPROPERTY(EditDefaultsOnly, Category="Setup")
        TSubclassOf<AProjectile> ProjectileBluePrint;

        UPROPERTY(EditDefaultsOnly, Category="Firing")
        float ReloadTimeInSeconds = 3;

        // TODO remove once firing is moved to aiming component
        UPROPERTY(EditDefaultsOnly, Category="Firing")
        float LaunchSpeed = 4000.0; // sensible starting values


        // local barrel reference for spawning projectile
        UTankBarrel* Barrel = nullptr; // TODO: remove
        float LastFireTime = 0;



};

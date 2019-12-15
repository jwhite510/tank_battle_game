// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/ActorComponent.h"
#include "Kismet/GameplayStatics.h"
#include "TankAimingComponent.generated.h"


// forward declaration
class UTankBarrel;
class UTankTurret;
class AProjectile;

UENUM()
enum class EFiringState : uint8
{
  Reloading,
  Aiming,
  Locked
};

// Holds barrels properties and elevate method
UCLASS( ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )
class BATTLETANK_API UTankAimingComponent : public UActorComponent
{
	GENERATED_BODY()

public:	

        UFUNCTION(BlueprintCallable, Category="Setup")
        void Initialiase(UTankBarrel* BarrelToSet, UTankTurret* TurretToSet);

        void AimAt(FVector HitLocation);

        UFUNCTION(BlueprintCallable)
        void Fire();

        EFiringState GetFiringState() const;


protected:
        UPROPERTY(BlueprintReadOnly, Category="State")
        EFiringState FiringState = EFiringState::Reloading;

private:

        virtual void BeginPlay() override;
        virtual void TickComponent(float DeltaTime, enum ELevelTick TickType, FActorComponentTickFunction *ThisTickFunction) override;

	// Sets default values for this component's properties
	UTankAimingComponent();

        UTankBarrel* Barrel = nullptr;
        UTankTurret* Turret = nullptr;

        void MoveBarrelTowards(FVector AimDirection_in);
        FVector AimDirection;

        bool IsBarrelMoving();

        UPROPERTY(EditDefaultsOnly, Category="Setup")
        TSubclassOf<AProjectile> ProjectileBluePrint;

        UPROPERTY(EditDefaultsOnly, Category="Firing")
        float ReloadTimeInSeconds = 3;

        // TODO remove once firing is moved to aiming component
        UPROPERTY(EditDefaultsOnly, Category="Firing")
        float LaunchSpeed = 4000.0; // sensible starting values

        // local barrel reference for spawning projectile
        float LastFireTime = 0;


};

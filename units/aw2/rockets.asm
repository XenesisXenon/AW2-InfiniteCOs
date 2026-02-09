;Unit_Artillery
	setUnitDefaults		Unit_Rockets
	
	setUnitName		Unit_Rockets,2242
	setUnitPrimaryName	Unit_Rockets,2256
	setUnitSecondaryName	Unit_Rockets,2266
	
	setUnitPrice		Unit_Rockets,1500
	setUnitMove		Unit_Rockets,5
	setUnitAmmo		Unit_Rockets,6	
	setUnitFuel		Unit_Rockets,50
	setUnitVision		Unit_Rockets,1

	setUnitClass		Unit_Rockets,ClassVehicle
	setUnitMoveType		Unit_Rockets,MoveTyre
	setUnitBuildLocation	Unit_Rockets,BuildBase
	setUnitSupplyTerrain	Unit_Rockets,SuppliedByBase
	setUnitFuelBurn		Unit_Rockets,FuelUseageTypeGround
	
	setUnitAIType			Unit_Rockets,AIIndirectCombat
	setUnitAIPriorityTarget	Unit_Rockets,AITargetGround+AITargetSea
	setUnitAIUnitClass		Unit_Rockets,AITargetGround

	setUnitMinRange			Unit_Rockets,3
	setUnitMaxRange			Unit_Rockets,5

	setUnitDamagePrimary		Unit_Rockets,95,Unit_Infantry
	setUnitDamagePrimary		Unit_Rockets,90,Unit_Mech
	
	setUnitDamagePrimary		Unit_Rockets,80,Unit_Tank
	setUnitDamagePrimary		Unit_Rockets,55,Unit_MidTank
	setUnitDamagePrimary		Unit_Rockets,50,Unit_Neotank
	
	setUnitDamagePrimary		Unit_Rockets,80,Unit_Artillery
	setUnitDamagePrimary		Unit_Rockets,85,Unit_Rockets
	setUnitDamagePrimary		Unit_Rockets,90,Unit_Missiles

	setUnitDamagePrimary		Unit_Rockets,90,Unit_Recon
	setUnitDamagePrimary		Unit_Rockets,80,Unit_APC
	setUnitDamagePrimary		Unit_Rockets,85,Unit_AntiAir

	setUnitDamagePrimary		Unit_Rockets,55,Unit_Battleship
	setUnitDamagePrimary		Unit_Rockets,85,Unit_Cruiser
	setUnitDamagePrimary		Unit_Rockets,60,Unit_Lander
	setUnitDamagePrimary		Unit_Rockets,85,Unit_Sub

	setUnitInventionDamage		Unit_Rockets,55,00
	
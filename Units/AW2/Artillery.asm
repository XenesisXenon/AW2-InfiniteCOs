;Unit_Artillery
	setUnitDefaults		Unit_Artillery
	
	setUnitName		Unit_Artillery,2241
	setUnitPrimaryName	Unit_Artillery,2255
	setUnitSecondaryName	Unit_Artillery,2266
	
	setUnitPrice		Unit_Artillery,600
	setUnitMove		Unit_Artillery,5
	setUnitAmmo		Unit_Artillery,9	
	setUnitFuel		Unit_Artillery,50
	setUnitVision		Unit_Artillery,1

	setUnitClass		Unit_Artillery,ClassVehicle
	setUnitMoveType		Unit_Artillery,MoveTread
	setUnitBuildLocation	Unit_Artillery,BuildBase
	setUnitSupplyTerrain	Unit_Artillery,SuppliedByBase
	setUnitFuelBurn		Unit_Artillery,FuelUseageTypeGround
	
	setUnitAIType			Unit_Artillery,AIIndirectCombat
	setUnitAIPriorityTarget	Unit_Artillery,AITargetGround+AITargetSea
	setUnitAIUnitClass		Unit_Artillery,AITargetGround

	setUnitMinRange			Unit_Artillery,2
	setUnitMaxRange			Unit_Artillery,3

	setUnitDamagePrimary		Unit_Artillery,90,Unit_Infantry
	setUnitDamagePrimary		Unit_Artillery,85,Unit_Mech
	setUnitDamagePrimary		Unit_Artillery,70,Unit_Tank
	setUnitDamagePrimary		Unit_Artillery,45,Unit_MidTank
	setUnitDamagePrimary		Unit_Artillery,40,Unit_Neotank
	setUnitDamagePrimary		Unit_Artillery,75,Unit_Artillery
	setUnitDamagePrimary		Unit_Artillery,80,Unit_Rockets
	setUnitDamagePrimary		Unit_Artillery,80,Unit_Missiles

	setUnitDamagePrimary		Unit_Artillery,80,Unit_Recon
	setUnitDamagePrimary		Unit_Artillery,70,Unit_APC
	setUnitDamagePrimary		Unit_Artillery,75,Unit_AntiAir

	setUnitDamagePrimary		Unit_Artillery,40,Unit_Battleship
	setUnitDamagePrimary		Unit_Artillery,65,Unit_Cruiser
	setUnitDamagePrimary		Unit_Artillery,55,Unit_Lander
	setUnitDamagePrimary		Unit_Artillery,60,Unit_Sub

	setUnitInventionDamage	Unit_Artillery,45,0
	
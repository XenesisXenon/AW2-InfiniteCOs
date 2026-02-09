;Unit_Missiles
	setUnitDefaults		Unit_Missiles
	
	setUnitName		Unit_Missiles,2244
	setUnitPrimaryName	Unit_Missiles,2262
	setUnitSecondaryName	Unit_Missiles,2266
	
	setUnitPrice		Unit_Missiles,1200
	setUnitMove		Unit_Missiles,4
	setUnitAmmo		Unit_Missiles,6
	setUnitFuel		Unit_Missiles,50	
	setUnitVision		Unit_Missiles,5

	setUnitClass		Unit_Missiles,ClassVehicle
	setUnitMoveType		Unit_Missiles,MoveTyre
	setUnitBuildLocation	Unit_Missiles,BuildBase
	setUnitSupplyTerrain	Unit_Missiles,SuppliedByBase
	setUnitFuelBurn		Unit_Missiles,FuelUseageTypeGround
	
	setUnitAIControl	Unit_Missiles,3
	setUnitAIType		Unit_Missiles,AIIndirectCombat
	setUnitAIPriorityTarget	Unit_Missiles,AITargetAir
	setUnitAIUnitClass	Unit_Missiles,AITargetGround
	
	setUnitMinRange		Unit_Missiles,3
	setUnitMaxRange		Unit_Missiles,5

	setUnitDamagePrimary	Unit_Missiles,100,Unit_Fighter
	setUnitDamagePrimary	Unit_Missiles,100,Unit_Bomber
	setUnitDamagePrimary	Unit_Missiles,120,Unit_BattleCopter
	setUnitDamagePrimary	Unit_Missiles,120,Unit_TransportCopter	

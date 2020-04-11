;Unit_Sub
	setUnitDefaults		Unit_Sub
	
	setUnitName		Unit_Sub,2252
	setUnitPrimaryName	Unit_Sub,2264
	setUnitSecondaryName	Unit_Sub,2266
	
	setUnitPrice		Unit_Sub,2000
	setUnitMove		Unit_Sub,5
	setUnitAmmo		Unit_Sub,6
	setUnitFuel		Unit_Sub,60	
	setUnitVision		Unit_Sub,5

	setUnitClass		Unit_Sub,ClassNaval
	setUnitMoveType		Unit_Sub,MoveShip
	setUnitBuildLocation	Unit_Sub,BuildPort
	setUnitSupplyTerrain	Unit_Sub,SuppliedByPort
	setUnitFuelBurn		Unit_Sub,FuelUseageTypeSea
	
	setUnitAIType		Unit_Sub,AIDirectCombat
	setUnitAIPriorityTarget	Unit_Sub,AITargetSea+AITargetSub
	setUnitAIUnitClass	Unit_Sub,AITargetSub

	setUnitDamagePrimary	Unit_Sub,55,Unit_Battleship
	setUnitDamagePrimary	Unit_Sub,25,Unit_Cruiser
	setUnitDamagePrimary	Unit_Sub,95,Unit_Lander
	setUnitDamagePrimary	Unit_Sub,55,Unit_Sub
	setUnitDamagePrimary	Unit_Sub,55,Unit_DivedSub
	

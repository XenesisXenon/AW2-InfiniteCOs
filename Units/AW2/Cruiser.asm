;Unit_Cruiser
	setUnitDefaults		Unit_Cruiser
	
	setUnitName		Unit_Cruiser,2250
	setUnitPrimaryName	Unit_Cruiser,2261
	setUnitSecondaryName	Unit_Cruiser,2265
	
	setUnitPrice		Unit_Cruiser,1800
	setUnitMove		Unit_Cruiser,6
	setUnitAmmo		Unit_Cruiser,9	
	setUnitVision		Unit_Cruiser,3

	setUnitClass		Unit_Cruiser,ClassNaval
	setUnitMoveType		Unit_Cruiser,MoveShip
	setUnitBuildLocation	Unit_Cruiser,BuildPort
	setUnitSupplyTerrain	Unit_Cruiser,SuppliedByPort
	setUnitFuelBurn		Unit_Cruiser,FuelUseageTypeSea
	
	setUnitTransport	Unit_Cruiser,TransportTypeCruiser

	setUnitAIType		Unit_Cruiser,AIDirectCombat
	setUnitAIPriorityTarget	Unit_Cruiser,AITargetAir+AITargetSea+AITargetSub
	setUnitAIUnitClass	Unit_Cruiser,AITargetSea

	setUnitDamagePrimary		Unit_Cruiser,90,Unit_Sub
	setUnitDamagePrimary		Unit_Cruiser,90,Unit_DivedSub
	
	setUnitDamageSecondary	Unit_Cruiser,55,Unit_Fighter
	setUnitDamageSecondary	Unit_Cruiser,65,Unit_Bomber
	setUnitDamageSecondary	Unit_Cruiser,115,Unit_BattleCopter
	setUnitDamageSecondary	Unit_Cruiser,115,Unit_TransportCopter

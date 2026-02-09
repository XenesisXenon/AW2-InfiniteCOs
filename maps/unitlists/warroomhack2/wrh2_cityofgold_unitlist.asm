;WRH2_CityOfGold_Unitlist.asm

	;Unit Unit_,X,Y,HP,Fuel,Ammo,AIState
	;UnitBasic Unit_,X,Y,AIState
	;UnitCO Unit_,X,Y,HP,Fuel,Ammo,AIState,Owner CO
	;UnitCOBasic Unit_,X,Y,AIState,OwnerCO

WRH2_CityOfGold_Unitlist:
	@@UnitArmyStart ArmyOrangeStar
	@@UnitBasic Unit_Fighter,0x2,0x6,AIUnitActive
	@@UnitBasic Unit_TransportCopter,0x1,0x7,AIUnitActive
	@@UnitBasic Unit_BattleCopter,0x3,0x7,AIUnitActive
	@@UnitBasic Unit_AntiAir,0x4,0x8,AIUnitActive
	@@UnitBasic Unit_Infantry,0x1,0x9,AIUnitActive
	@@UnitBasic Unit_Infantry,0x3,0x9,AIUnitActive
	@@UnitBasic Unit_Missiles,0x2,0x9,AIUnitActive

	@@UnitArmyStart ArmyBlueMoon
	@@UnitBasic Unit_Bomber,0x2,0x1,AIUnitActive
	@@UnitBasic Unit_Fighter,0x4,0x2,AIUnitActive
	@@UnitBasic Unit_Bomber,0x8,0x4,AIUnitActive
	@@UnitBasic Unit_BattleCopter,0xA,0x4,AIUnitActive
	@@UnitBasic Unit_Fighter,0xE,0x2,AIUnitActive
	@@UnitBasic Unit_BattleCopter,0xF,0x5,AIUnitActive
	@@UnitBasic Unit_TransportCopter,0x10,0x6,AIUnitActive
	@@UnitBasic Unit_Rockets,0x9,0x9,AIUnitActive
	@@UnitBasic Unit_AntiAir,0x7,0xA,AIUnitActive
	@@UnitBasic Unit_AntiAir,0xB,0x1,AIUnitActive
	@@UnitBasic Unit_Infantry,0xB,0x2,AIUnitActive
	@@UnitBasic Unit_Tank,0x9,0x3,AIUnitActive
	@@UnitBasic Unit_MidTank,0x14,0x1,AIUnitActive
	@@UnitBasic Unit_AntiAir,0x10,0x2,AIUnitActive
	@@UnitBasic Unit_Mech,0x11,0x4,AIUnitActive
	@@UnitBasic Unit_Mech,0x12,0x5,AIUnitActive
	@@UnitBasic Unit_Missiles,0x11,0x6,AIUnitActive
	@@UnitBasic Unit_AntiAir,0x13,0x8,AIUnitActive
	@@UnitBasic Unit_TransportCopter,0x12,0x7,AIUnitActive
	@@UnitBasic Unit_AntiAir,0x10,0x9,AIUnitActive
	@@UnitBasic Unit_Infantry,0x11,0xA,AIUnitActive
	@@UnitBasic Unit_Infantry,0xC,0x9,AIUnitActive
	@@UnitBasic Unit_Tank,0xB,0x7,AIUnitActive
	@@UnitBasic Unit_Fighter,0xE,0x7,AIUnitActive
	@@UnitListEnd

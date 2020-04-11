;WRH2_Talysman_Unitlist.asm

	;Unit Unit_,X,Y,HP,Fuel,Ammo,AIState
	;UnitBasic Unit_,X,Y,AIState
	;UnitCO Unit_,X,Y,HP,Fuel,Ammo,AIState,Owner CO
	;UnitCOBasic Unit_,X,Y,AIState,OwnerCO

WRH2_Talysman_Unitlist:
	@@UnitArmyStart ArmyOrangeStar
	@@UnitBasic Unit_APC,0x16,0x2,AIUnitActive
	@@UnitBasic Unit_Artillery,0x18,0x3,AIUnitActive
	@@UnitBasic Unit_Tank,0x17,0x4,AIUnitActive
	@@UnitBasic Unit_Infantry,0x18,0x5,AIUnitActive
	@@UnitBasic Unit_BattleCopter,0x19,0x5,AIUnitActive
	@@UnitBasic Unit_Tank,0x16,0x7,AIUnitActive
	@@UnitBasic Unit_Tank,0x17,0x7,AIUnitActive

	@@UnitArmyStart ArmyBlueMoon
	@@UnitBasic Unit_MidTank,0x4,0x1,AIUnitActive
	@@UnitBasic Unit_Tank,0x6,0x4,AIUnitActive
	@@UnitBasic Unit_Tank,0x2,0x5,AIUnitActive
	@@UnitBasic Unit_Tank,0x4,0x6,AIUnitActive
	@@UnitBasic Unit_Tank,0x5,0x6,AIUnitActive
	@@UnitBasic Unit_AntiAir,0x6,0x7,AIUnitActive
	@@UnitBasic Unit_Tank,0x5,0x9,AIUnitActive
	@@UnitBasic Unit_Tank,0xB,0x8,AIUnitActive
	@@UnitBasic Unit_Tank,0xD,0x8,AIUnitActive
	@@UnitBasic Unit_Tank,0xE,0x5,AIUnitActive
	@@UnitBasic Unit_Mech,0x15,0x9,AIUnitActive
	@@UnitListEnd

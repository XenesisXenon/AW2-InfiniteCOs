;WRH2_LegionPeninsula_Unitlist.asm

	;Unit Unit_,X,Y,HP,Fuel,Ammo,AIState
	;UnitBasic Unit_,X,Y,AIState
	;UnitCO Unit_,X,Y,HP,Fuel,Ammo,AIState,Owner CO
	;UnitCOBasic Unit_,X,Y,AIState,OwnerCO

WRH2_LegionPeninsula_Unitlist:
	@@UnitArmyStart ArmyOrangeStar
	@@UnitBasic Unit_Tank,0x7,0xF,AIUnitActive
	@@UnitBasic Unit_Tank,0x8,0x10,AIUnitActive
	@@UnitBasic Unit_Artillery,0x9,0x11,AIUnitActive
	@@UnitBasic Unit_APC,0x8,0x12,AIUnitActive
	@@UnitBasic Unit_Mech,0x5,0x12,AIUnitActive
	@@UnitBasic Unit_Mech,0x6,0x13,AIUnitActive
	@@UnitBasic Unit_Artillery,0x9,0x13,AIUnitActive

	@@UnitArmyStart ArmyBlueMoon
	@@UnitBasic Unit_Artillery,0x1,0x1,AIUnitActive
	@@UnitBasic Unit_Artillery,0x3,0x1,AIUnitDefensive
	@@UnitBasic Unit_Artillery,0x2,0x2,AIUnitActive
	@@UnitBasic Unit_Rockets,0x5,0x2,AIUnitDefensive
	@@UnitBasic Unit_Infantry,0x0,0x3,AIUnitActive
	@@UnitBasic Unit_Infantry,0x3,0x3,AIUnitActive
	@@UnitBasic Unit_Infantry,0x5,0x3,AIUnitActive
	@@UnitBasic Unit_Mech,0x2,0x4,AIUnitActive
	@@UnitBasic Unit_Mech,0x4,0x4,AIUnitActive
	@@UnitBasic Unit_Tank,0x1,0x5,AIUnitActive
	@@UnitBasic Unit_Tank,0x5,0x5,AIUnitActive
	@@UnitBasic Unit_Missiles,0x4,0x0,AIUnitDefensive
	@@UnitBasic Unit_AntiAir,0x2,0x0,AIUnitDefensive
	@@UnitListEnd

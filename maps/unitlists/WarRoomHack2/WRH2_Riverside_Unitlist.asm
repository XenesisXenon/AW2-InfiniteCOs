;WRH2_Riverside_Unitlist.asm

	;Unit Unit_,X,Y,HP,Fuel,Ammo,AIState
	;UnitBasic Unit_,X,Y,AIState
	;UnitCO Unit_,X,Y,HP,Fuel,Ammo,AIState,Owner CO
	;UnitCOBasic Unit_,X,Y,AIState,OwnerCO

WRH2_Riverside_Unitlist:
	@@UnitArmyStart ArmyOrangeStar
	@@UnitBasic Unit_Tank,0x15,0x4,AIUnitActive
	@@UnitBasic Unit_Infantry,0x16,0x5,AIUnitActive
	@@UnitBasic Unit_MidTank,0x13,0x6,AIUnitActive
	@@UnitBasic Unit_APC,0x14,0x6,AIUnitActive
	@@UnitBasic Unit_Tank,0xe,0x6,AIUnitActive

	@@UnitArmyStart ArmyBlueMoon
	@@UnitBasic Unit_Artillery,0x10,0x4,AIUnitActive
	@@UnitBasic Unit_Artillery,0x12,0xA,AIUnitActive
	@@UnitBasic Unit_AntiAir,0x11,0xB,AIUnitActive
	@@UnitBasic Unit_Infantry,0x13,0xA,AIUnitActive
	@@UnitBasic Unit_APC,0x15,0xB,AIUnitActive

	@@UnitArmyStart ArmyGreenEarth
	@@UnitBasic Unit_Mech,0xC,0x0,AIUnitActive
	@@UnitBasic Unit_Rockets,0x2,0x1,AIUnitActive
	@@UnitBasic Unit_Missiles,0x9,0x5,AIUnitActive
	@@UnitBasic Unit_Mech,0x7,0x9,AIUnitActive
	@@UnitBasic Unit_Missiles,0x7,0xA,AIUnitActive
	@@UnitBasic Unit_Tank,0x2,0xA,AIUnitDefensive
	@@UnitBasic Unit_AntiAir,0x10,0x5,AIUnitDefensive
	@@UnitBasic Unit_Recon,0x1A,0x2,AIUnitDefensive
	@@UnitBasic Unit_MidTank,0x1C,0x2,AIUnitActive
	@@UnitBasic Unit_MidTank,0x1B,0x3,AIUnitActive
	@@UnitBasic Unit_MidTank,0x1D,0x5,AIUnitActive
	@@UnitBasic Unit_MidTank,0x1B,0x7,AIUnitActive
	@@UnitBasic Unit_MidTank,0x1B,0xA,AIUnitActive
	@@UnitBasic Unit_MidTank,0x1D,0xB,AIUnitActive
	@@UnitBasic Unit_Recon,0x19,0xA,AIUnitActive
	@@UnitListEnd

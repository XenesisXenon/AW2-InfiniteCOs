;WRH2_Bombardier_Unitlist.asm

	;Unit Unit_,X,Y,HP,Fuel,Ammo,AIState
	;UnitBasic Unit_,X,Y,AIState
	;UnitCO Unit_,X,Y,HP,Fuel,Ammo,AIState,Owner CO
	;UnitCOBasic Unit_,X,Y,AIState,OwnerCO

WRH2_Bombardier_Unitlist:
	@@UnitArmyStart ArmyBlueMoon
	@@UnitBasic	Unit_Recon,0x5,0x0,AIUnitActive
	@@UnitBasic	Unit_APC,0xB,0x0,AIUnitActive
	@@UnitBasic	Unit_MidTank,0xB,0x1,AIUnitActive
	@@UnitBasic	Unit_Tank,0x5,0x2,AIUnitActive
	@@UnitBasic	Unit_Tank,0x7,0x3,AIUnitActive
	@@UnitBasic	Unit_APC,0x12,0x3,AIUnitActive
	@@UnitBasic	Unit_BattleCopter,0x14,0x1,AIUnitActive
	@@UnitBasic	Unit_Bomber,0x18,0x2,AIUnitActive
	@@UnitBasic	Unit_MidTank,0x14,0x4,AIUnitActive
	@@UnitBasic	Unit_BattleCopter,0x17,0x6,AIUnitActive
	@@UnitBasic	Unit_AntiAir,0x19,0x9,AIUnitActive
	@@UnitBasic	Unit_Tank,0x16,0xA,AIUnitActive
	@@UnitBasic	Unit_Fighter,0x15,0xD,AIUnitActive
	@@UnitBasic	Unit_APC,0x11,0xD,AIUnitActive
	@@UnitBasic	Unit_Recon,0xB,0xD,AIUnitActive
	@@UnitBasic	Unit_Cruiser,0xB,0x7,AIUnitActive
	@@UnitListEnd

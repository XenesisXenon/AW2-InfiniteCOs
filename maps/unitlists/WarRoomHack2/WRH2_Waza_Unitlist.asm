;WRH2_Waza_Unitlist.asm

	;Unit Unit_,X,Y,HP,Fuel,Ammo,AIState
	;UnitBasic Unit_,X,Y,AIState
	;UnitCO Unit_,X,Y,HP,Fuel,Ammo,AIState,Owner CO
	;UnitCOBasic Unit_,X,Y,AIState,OwnerCO

WRH2_Waza_Unitlist:
	@@UnitArmyStart ArmyOrangeStar
	@@UnitBasic Unit_Tank,0x7,0x5,AIUnitActive
	@@UnitBasic Unit_Mech,0x6,0x6,AIUnitActive
	@@UnitBasic Unit_AntiAir,0x7,0x6,AIUnitActive
	@@UnitBasic Unit_Infantry,0x8,0x6,AIUnitActive
	@@UnitBasic Unit_Artillery,0x5,0x7,AIUnitActive
	@@UnitBasic Unit_Mech,0x7,0x7,AIUnitActive
	@@UnitBasic Unit_Recon,0x9,0x7,AIUnitActive
	@@UnitBasic Unit_APC,0x6,0x8,AIUnitActive
	@@UnitBasic Unit_Tank,0x7,0x8,AIUnitActive
	@@UnitBasic Unit_Infantry,0x8,0x8,AIUnitActive
	@@UnitBasic Unit_Artillery,0x7,0x9,AIUnitActive

	@@UnitArmyStart ArmyBlueMoon
	@@UnitBasic Unit_Mech,0x3,0x2,AIUnitActive
	@@UnitBasic Unit_Mech,0x2,0x3,AIUnitActive
	@@UnitBasic Unit_Mech,0xA,0x2,AIUnitActive
	@@UnitBasic Unit_Mech,0xB,0x3,AIUnitActive
	@@UnitBasic Unit_Mech,0x2,0xA,AIUnitActive
	@@UnitBasic Unit_Mech,0x3,0xB,AIUnitActive
	@@UnitBasic Unit_Mech,0xB,0xA,AIUnitActive
	@@UnitBasic Unit_Mech,0xA,0xB,AIUnitActive
	@@UnitListEnd

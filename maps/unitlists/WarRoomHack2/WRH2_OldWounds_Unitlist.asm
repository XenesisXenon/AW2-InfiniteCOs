;WRH2_OldWounds_Unitlist.asm

	;Unit Unit_,X,Y,HP,Fuel,Ammo,AIState
	;UnitBasic Unit_,X,Y,AIState
	;UnitCO Unit_,X,Y,HP,Fuel,Ammo,AIState,Owner CO
	;UnitCOBasic Unit_,X,Y,AIState,OwnerCO

WRH2_OldWounds_Unitlist:
	@@UnitArmyStart ArmyOrangeStar
	@@UnitBasic Unit_Infantry,1,5,AIUnitActive
	@@UnitBasic Unit_Mech,1,6,AIUnitActive
	@@UnitBasic Unit_Mech,2,6,AIUnitActive	
	;CO Specific

	@@UnitArmyStart ArmyBlueMoon
	@@UnitBasic Unit_BattleCopter,0xE,8,AIUnitActive
	@@UnitBasic Unit_BattleCopter,0xE,9,AIUnitActive
	@@UnitBasic Unit_BattleCopter,0xE,10,AIUnitActive
	@@UnitBasic Unit_Fighter,0x12,3,AIUnitActive
	@@UnitBasic Unit_Fighter,0x13,4,AIUnitActive
	@@UnitBasic Unit_Bomber,0x19,4,AIUnitActive
	@@UnitBasic Unit_Bomber,0x1A,5,AIUnitActive
	@@UnitBasic Unit_Bomber,0x1A,11,AIUnitActive
	@@UnitBasic Unit_Bomber,0x1A,12,AIUnitActive
	@@UnitBasic Unit_Fighter,0x17,13,AIUnitActive
	@@UnitBasic Unit_Fighter,0x18,14,AIUnitActive
	@@UnitBasic Unit_Tank,0xE,3,AIUnitActive
	@@UnitBasic Unit_AntiAir,0xE,5,AIUnitActive
	@@UnitBasic Unit_Tank,0xE,16,AIUnitActive
	@@UnitBasic Unit_AntiAir,0xF,16,AIUnitActive
	@@UnitBasic Unit_Missiles,0x10,8,AIUnitActive
	@@UnitBasic Unit_Infantry,0x11,10,AIUnitActive
	@@UnitBasic Unit_Infantry,0x13,15,AIUnitActive
	@@UnitBasic Unit_MidTank,0x15,15,AIUnitActive
	@@UnitBasic Unit_MidTank,0x14,1,AIUnitActive
	@@UnitBasic Unit_MidTank,0x1A,7,AIUnitActive
	@@UnitBasic Unit_MidTank,0x1A,9,AIUnitActive
	@@UnitListEnd

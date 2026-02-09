;WRH2_FortIsthmus_Unitlist.asm

	;Unit Unit_,X,Y,HP,Fuel,Ammo,AIState
	;UnitBasic Unit_,X,Y,AIState
	;UnitCO Unit_,X,Y,HP,Fuel,Ammo,AIState,Owner CO
	;UnitCOBasic Unit_,X,Y,AIState,OwnerCO

WRH2_FortIsthmus_Unitlist:
	@@UnitArmyStart ArmyOrangeStar
	@@UnitBasic Unit_Infantry,0x2,0x1,AIUnitActive
	@@UnitBasic Unit_Infantry,0x5,0x2,AIUnitActive
	@@UnitBasic Unit_Infantry,0x1,0x3,AIUnitActive
	@@UnitBasic Unit_Infantry,0x4,0x3,AIUnitActive
	@@UnitBasic Unit_Infantry,0x3,0x4,AIUnitActive

	@@UnitArmyStart ArmyBlueMoon
	@@UnitBasic Unit_APC,0x12,0xA,AIUnitActive
	@@UnitBasic Unit_Infantry,0x13,0xB,AIUnitActive
	@@UnitBasic Unit_Infantry,0x14,0xB,AIUnitActive
	@@UnitBasic Unit_TransportCopter,0x11,0xC,AIUnitActive
	@@UnitListEnd

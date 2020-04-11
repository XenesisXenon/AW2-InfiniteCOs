;WRH2_SorrowsBluff_Unitlist.asm

	;Unit Unit_,X,Y,HP,Fuel,Ammo,AIState
	;UnitBasic Unit_,X,Y,AIState
	;UnitCO Unit_,X,Y,HP,Fuel,Ammo,AIState,Owner CO
	;UnitCOBasic Unit_,X,Y,AIState,OwnerCO

WRH2_SorrowsBluff_Unitlist:
	@@UnitArmyStart ArmyOrangeStar
	@@UnitBasic Unit_Tank,0x7,0x1,AIUnitActive
	@@UnitBasic Unit_Infantry,0x6,0x2,AIUnitActive
	@@UnitBasic Unit_Infantry,0x9,0x2,AIUnitActive
	@@UnitBasic Unit_Mech,0x8,0x3,AIUnitActive
	@@UnitBasic Unit_Mech,0x7,0x3,AIUnitActive
	@@UnitBasic Unit_Lander,0x6,0x3,AIUnitActive
	@@UnitBasic Unit_Recon,0xA,0x3,AIUnitActive
	@@UnitBasic Unit_Artillery,0x1,0x7,AIUnitActive

	@@UnitArmyStart ArmyBlueMoon
	@@UnitBasic Unit_Cruiser,0xC,0x1,AIUnitActive
	@@UnitBasic Unit_Cruiser,0xF,0x1,AIUnitActive
	@@UnitBasic Unit_Battleship,0x11,0x3,AIUnitActive
	@@UnitBasic Unit_Mech,0x5,0x7,AIUnitActive
	@@UnitBasic Unit_Artillery,0x7,0x7,AIUnitActive
	@@UnitBasic Unit_Artillery,0xA,0x8,AIUnitActive
	@@UnitBasic Unit_Tank,0x10,0xA,AIUnitDefensive
	@@UnitBasic Unit_Rockets,0x12,0xA,AIUnitDefensive
	@@UnitBasic Unit_AntiAir,0x10,0xB,AIUnitDefensive
	@@UnitBasic Unit_AntiAir,0x6,0xB,AIUnitDefensive
	@@UnitListEnd

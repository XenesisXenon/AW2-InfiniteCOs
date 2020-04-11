;WRH2_BarracudaBay_Unitlist.asm

	;Unit Unit_,X,Y,HP,Fuel,Ammo,AIState
	;UnitBasic Unit_,X,Y,AIState
	;UnitCO Unit_,X,Y,HP,Fuel,Ammo,AIState,Owner CO
	;UnitCOBasic Unit_,X,Y,AIState,OwnerCO

WRH2_BarracudaBay_Unitlist:
	@@UnitArmyStart ArmyOrangeStar
	@@UnitBasic	Unit_Rockets,0x0,0x2,AIUnitActive
	@@UnitBasic	Unit_BattleCopter,0x4,0x2,AIUnitActive
	@@UnitBasic	Unit_BattleCopter,0x9,0x1,AIUnitActive
	@@Unit		Unit_Battleship,0x6,0x3,100,99,0,AIUnitActive
	@@Unit		Unit_Battleship,0x7,0x3,100,99,0,AIUnitActive
	@@Unit		Unit_Battleship,0x8,0x3,100,99,0,AIUnitActive
	@@Unit		Unit_Battleship,0x6,0x4,100,99,0,AIUnitActive
	@@Unit		Unit_Battleship,0x7,0x4,100,99,0,AIUnitActive
	@@Unit		Unit_Battleship,0x8,0x4,100,99,0,AIUnitActive
	@@Unit		Unit_Battleship,0x6,0x5,100,99,0,AIUnitActive
	@@Unit		Unit_Battleship,0x7,0x5,100,99,0,AIUnitActive
	@@Unit		Unit_Battleship,0x8,0x5,100,99,0,AIUnitActive
	@@UnitBasic	Unit_Infantry,0x1,0x3,AIUnitActive
	@@UnitBasic	Unit_Lander,0x0,0x4,AIUnitActive
	@@UnitBasic	Unit_Tank,0xF,0x0,AIUnitActive
	@@UnitBasic	Unit_Tank,0x11,0x0,AIUnitActive
	@@UnitBasic	Unit_Infantry,0x10,0x0,AIUnitActive
	@@UnitBasic	Unit_AntiAir,0x12,0x0,AIUnitActive
	@@UnitBasic	Unit_Lander,0x13,0x0,AIUnitActive
	@@UnitBasic	Unit_Lander,0x14,0x0,AIUnitActive
	@@UnitBasic	Unit_MidTank,0x1C,0x0,AIUnitActive
	@@UnitBasic	Unit_Artillery,0x1D,0x0,AIUnitActive
	@@UnitBasic	Unit_Lander,0x1C,0x1,AIUnitActive
	@@UnitBasic	Unit_APC,0x14,0xB,AIUnitActive

	@@UnitArmyStart ArmyBlueMoon
	@@UnitBasic	Unit_Cruiser,0x6,0xD,AIUnitActive
	@@UnitBasic	Unit_Recon,0xC,0xD,AIUnitActive
	@@UnitBasic	Unit_AntiAir,0xF,0x10,AIUnitActive
	@@UnitBasic	Unit_Cruiser,0xB,0x11,AIUnitActive
	@@UnitBasic	Unit_Lander,0xC,0x12,AIUnitActive
	@@UnitBasic	Unit_Battleship,0x1,0x12,AIUnitActive
	@@UnitBasic	Unit_MidTank,0x13,0x11,AIUnitActive
	@@UnitBasic	Unit_Artillery,0x13,0x12,AIUnitActive
	@@UnitBasic	Unit_APC,0x14,0x12,AIUnitActive
	@@UnitBasic	Unit_Infantry,0x14,0x13,AIUnitActive
	@@UnitBasic	Unit_Tank,0x18,0x9,AIUnitActive
	@@UnitBasic	Unit_Sub,0x1D,0xB,AIUnitActive
	@@UnitBasic	Unit_Cruiser,0x1B,0xA,AIUnitActive
	@@UnitBasic	Unit_MidTank,0x1B,0xC,AIUnitActive
	@@UnitBasic	Unit_Infantry,0x1C,0xF,AIUnitActive
	@@UnitBasic	Unit_BattleCopter,0x1D,0xF,AIUnitActive
	@@UnitListEnd

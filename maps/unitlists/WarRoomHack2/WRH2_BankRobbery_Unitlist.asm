;WRH2_BankRobbery_Unitlist.asm

	;Unit Unit_,X,Y,HP,Fuel,Ammo,AIState
	;UnitBasic Unit_,X,Y,AIState
	;UnitCO Unit_,X,Y,HP,Fuel,Ammo,AIState,Owner CO
	;UnitCOBasic Unit_,X,Y,AIState,OwnerCO

WRH2_BankRobbery_Unitlist:
	@@UnitArmyStart ArmyBlueMoon
	@@UnitBasic	Unit_MidTank,0x9,0x12,AIUnitDefensive
	@@UnitBasic	Unit_Rockets,0xA,0x13,AIUnitDefensive
	@@UnitBasic	Unit_Artillery,0x7,0x12,AIUnitDefensive
	@@UnitBasic	Unit_APC,0xA,0x12,AIUnitDefensive
	@@UnitListEnd

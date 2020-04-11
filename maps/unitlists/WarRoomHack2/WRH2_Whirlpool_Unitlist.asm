;WRH2_Whirlpool_Unitlist.asm

	;Unit Unit_,X,Y,HP,Fuel,Ammo,AIState
	;UnitBasic Unit_,X,Y,AIState
	;UnitCO Unit_,X,Y,HP,Fuel,Ammo,AIState,Owner CO
	;UnitCOBasic Unit_,X,Y,AIState,OwnerCO

WRH2_Whirlpool_Unitlist:
	@@UnitArmyStart ArmyOrangeStar
	@@UnitBasic Unit_Mech,10,2,AIUnitActive
	@@UnitBasic Unit_Mech,0,3,AIUnitActive
	@@UnitBasic Unit_Infantry,11,3,AIUnitActive
	@@UnitBasic Unit_TransportCopter,11,4,AIUnitActive
	@@UnitBasic Unit_Bomber,11,5,AIUnitActive
	@@UnitBasic Unit_Mech,0,6,AIUnitActive
	@@UnitBasic Unit_Infantry,11,7,AIUnitActive
	@@UnitBasic Unit_Mech,10,8,AIUnitActive
	@@UnitBasic Unit_TransportCopter,11,8,AIUnitActive
	@@UnitBasic Unit_Mech,9,9,AIUnitActive
	@@UnitBasic Unit_BattleCopter,10,9,AIUnitActive
	@@UnitBasic Unit_Infantry,11,9,AIUnitActive
	@@UnitBasic Unit_BattleCopter,0,8,AIUnitActive
	
	;CO Specific (WRH2)
	@@UnitCOBasic Unit_Tank,11,6,AIUnitActive,COAndy
	@@UnitCOBasic Unit_Tank,11,6,AIUnitActive,COMax
	@@UnitCOBasic Unit_Artillery,11,6,AIUnitActive,COOlaf
	@@UnitCOBasic Unit_Mech,2,2,AIUnitActive,COSami
	@@UnitCOBasic Unit_Artillery,2,2,AIUnitActive,COGrit	
	@@UnitCOBasic Unit_Artillery,2,2,AIUnitActive,COGrit	
	@@UnitCOBasic Unit_Recon,2,2,AIUnitActive,COSonja	
	@@UnitCOBasic Unit_Recon,11,6,AIUnitActive,COSonja	
	@@UnitCO Unit_Bomber,14,11,50,99,9,AIUnitActive,COEagle
	@@UnitCO Unit_Battleship,14,11,50,99,9,AIUnitActive,CODrake	
	@@UnitCOBasic Unit_Artillery,11,6,AIUnitActive,COAWDSKindle
	@@UnitCOBasic Unit_Artillery,6,5,AIUnitActive,COLash	
	@@UnitCOBasic Unit_Tank,6,5,AIUnitActive,COAdder
	@@UnitCOBasic Unit_Tank,6,5,AIUnitActive,COHawke
	@@UnitCOBasic Unit_BattleCopter,11,6,AIUnitActive,COColin	
	@@UnitCOBasic Unit_Tank,11,6,AIUnitActive,COJess	
	@@UnitCOBasic Unit_BattleCopter,11,6,AIUnitActive,COSensei	
	
	@@UnitArmyStart ArmyBlueMoon
	@@UnitBasic Unit_Tank,6,0,AIUnitActive
	@@UnitBasic Unit_Rockets,7,0,AIUnitActive
	@@UnitBasic Unit_AntiAir,6,1,AIUnitActive
	@@UnitBasic Unit_Tank,5,4,AIUnitActive
	@@UnitBasic Unit_Mech,7,5,AIUnitActive
	@@UnitBasic Unit_Rockets,4,6,AIUnitActive
	@@UnitBasic Unit_AntiAir,6,6,AIUnitActive
	@@UnitBasic Unit_Tank,5,7,AIUnitActive
	@@UnitBasic Unit_Rockets,7,7,AIUnitActive
	@@UnitBasic Unit_AntiAir,5,9,AIUnitActive
	@@UnitBasic Unit_Mech,6,9,AIUnitActive
	@@UnitBasic Unit_AntiAir,5,5,AIUnitActive
	@@UnitListEnd
	


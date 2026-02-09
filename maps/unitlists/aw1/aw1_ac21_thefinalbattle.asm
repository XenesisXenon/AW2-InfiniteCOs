;AW1_0x082DF2E4.bin
	;Unit Type, X co-ordinate, Y co-ordinate, HP, Fuel, Ammo, AI Type
AW1_0x082DF2E4:
	@@UnitArmyStart ArmyOrangeStar
	@@Unit Unit_Infantry,8,15,100,99,9,1
	@@Unit Unit_Infantry,12,15,100,99,9,1
	@@Unit Unit_AntiAir,9,17,100,99,9,1
	@@Unit Unit_AntiAir,11,17,100,99,9,1
	@@Unit Unit_MidTank,8,16,100,99,9,1
	@@Unit Unit_MidTank,12,16,100,99,9,1
	@@Unit Unit_Missiles,10,17,100,99,9,1
	@@Unit Unit_APC,10,14,100,99,9,1
	@@Unit Unit_TransportCopter,10,15,100,99,9,1
	@@Unit Unit_BattleCopter,7,17,100,99,9,1
	@@Unit Unit_BattleCopter,13,17,100,99,9,1
	
	@@UnitArmyStart ArmyBlueMoon
	.include "maps/unitlists/aw1/aw1_c21ex_olaf.asm"
	.include "maps/unitlists/aw1/aw1_c21ex_grit.asm"
	.include "maps/unitlists/aw1/aw1_c21ex_max.asm"
	
	@@UnitArmyStart ArmyGreenEarth
	.include "maps/unitlists/aw1/aw1_c21ex_drake.asm"
	.include "maps/unitlists/aw1/aw1_c21ex_eagle.asm"
	.include "maps/unitlists/aw1/aw1_c21ex_kanbei.asm"
	.include "maps/unitlists/aw1/aw1_c21ex_sami.asm"

	@@UnitArmyStart ArmyYellowComet
	@@Unit Unit_Infantry,1,8,100,99,9,3
	@@Unit Unit_Infantry,2,8,100,99,9,3
	@@Unit Unit_Infantry,18,8,100,99,9,3
	@@Unit Unit_Infantry,19,8,100,99,9,3
	@@Unit Unit_Mech,8,10,100,99,9,3
	@@Unit Unit_Mech,9,10,100,99,9,3
	@@Unit Unit_Mech,10,10,100,99,9,3
	@@Unit Unit_Mech,11,10,100,99,9,3
	@@Unit Unit_Mech,12,10,100,99,9,3
	@@Unit Unit_MidTank,1,9,100,99,9,AIUnitActive
	@@Unit Unit_MidTank,10,9,100,99,9,AIUnitActive
	@@Unit Unit_MidTank,19,9,100,99,9,AIUnitActive
	@@Unit Unit_MidTank,9,4,100,99,9,AIUnitActive
	@@Unit Unit_MidTank,11,4,100,99,9,AIUnitActive
	@@Unit Unit_MidTank,7,4,100,99,9,AIUnitActive
	@@Unit Unit_MidTank,13,4,100,99,9,AIUnitActive
	@@Unit Unit_Tank,8,5,100,99,9,AIUnitActive
	@@Unit Unit_Tank,10,5,100,99,9,AIUnitActive
	@@Unit Unit_Tank,12,5,100,99,9,AIUnitActive
	@@Unit Unit_AntiAir,7,3,100,99,9,AIUnitActive
	@@Unit Unit_AntiAir,8,3,100,99,9,AIUnitActive
	@@Unit Unit_AntiAir,12,3,100,99,9,AIUnitActive
	@@Unit Unit_AntiAir,13,3,100,99,9,AIUnitActive
	@@Unit Unit_Bomber,1,4,100,99,9,AIUnitActive
	@@Unit Unit_Bomber,3,5,100,99,9,AIUnitActive
	@@Unit Unit_Bomber,5,7,100,99,9,AIUnitActive
	@@Unit Unit_Bomber,19,4,100,99,9,AIUnitActive
	@@Unit Unit_Bomber,17,5,100,99,9,AIUnitActive
	@@Unit Unit_Bomber,15,7,100,99,9,AIUnitActive
	@@Unit Unit_Fighter,4,5,100,99,9,AIUnitActive
	@@Unit Unit_Fighter,5,6,100,99,9,AIUnitActive
	@@Unit Unit_Fighter,16,5,100,99,9,AIUnitActive
	@@Unit Unit_Fighter,15,6,100,99,9,AIUnitActive
	@@Unit Unit_BattleCopter,8,2,100,99,9,AIUnitActive
	@@Unit Unit_BattleCopter,9,2,100,99,9,AIUnitActive
	@@Unit Unit_BattleCopter,11,2,100,99,9,AIUnitActive
	@@Unit Unit_BattleCopter,12,2,100,99,9,AIUnitActive
	@@Unit Unit_AntiAir,8,1,100,99,9,AIUnitDefensive
	@@Unit Unit_AntiAir,12,1,100,99,9,AIUnitDefensive
	@@Unit Unit_MidTank,10,3,100,99,9,AIUnitDefensive

	@@UnitListEnd

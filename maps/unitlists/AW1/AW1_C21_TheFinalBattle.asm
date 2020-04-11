;AW1_0x082DF11C.bin
	;Unit Type, X co-ordinate, Y co-ordinate, HP, Fuel, Ammo, AI Type
AW1_0x082DF11C:
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
	.include "maps/unitlists/AW1/AW1_C21Ex_Olaf.asm"
	.include "maps/unitlists/AW1/AW1_C21Ex_Grit.asm"
	.include "maps/unitlists/AW1/AW1_C21Ex_Max.asm"
	
	@@UnitArmyStart ArmyGreenEarth
	.include "maps/unitlists/AW1/AW1_C21Ex_Drake.asm"
	.include "maps/unitlists/AW1/AW1_C21Ex_Eagle.asm"
	.include "maps/unitlists/AW1/AW1_C21Ex_Kanbei.asm"
	.include "maps/unitlists/AW1/AW1_C21Ex_Sami.asm"

	@@UnitArmyStart ArmyYellowComet
	@@Unit Unit_MidTank,9,4,100,99,9,AIUnitActive
	@@Unit Unit_MidTank,11,4,100,99,9,AIUnitActive
	@@Unit Unit_Tank,8,5,100,99,9,AIUnitActive
	@@Unit Unit_Tank,10,5,100,99,9,AIUnitActive
	@@Unit Unit_Tank,12,5,100,99,9,AIUnitActive
	@@Unit Unit_AntiAir,7,3,100,99,9,AIUnitActive
	@@Unit Unit_AntiAir,8,3,100,99,9,AIUnitActive
	@@Unit Unit_AntiAir,12,3,100,99,9,AIUnitActive
	@@Unit Unit_AntiAir,13,3,100,99,9,AIUnitActive
	@@Unit Unit_Bomber,3,5,100,99,9,AIUnitActive
	@@Unit Unit_Bomber,5,7,100,99,9,AIUnitActive
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

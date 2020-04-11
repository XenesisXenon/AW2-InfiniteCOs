;cmp20
	;Unit Type, X co-ordinate, Y co-ordinate, HP, Ammo, Fuel, AI Type
AW4_cmp20:
	@@UnitArmyStart ArmyOrangeStar
	@@Unit Unit_Infantry,8,4,100,0,99,1
	@@Unit Unit_Infantry,10,4,100,0,99,1
	@@Unit Unit_Mech,8,7,100,3,70,1
	@@Unit Unit_Mech,10,7,100,3,70,1
	@@Unit Unit_Bike,11,6,100,0,70,1
	@@Unit Unit_AntiAir,11,5,100,6,60,1

	@@UnitArmyStart ArmyBlueMoon
	@@Unit Unit_AntiAir,2,4,100,6,60,1
	@@Unit Unit_AntiAir,2,8,100,6,60,1
	@@Unit Unit_Tank,5,4,100,6,70,1
	@@Unit Unit_Tank,5,8,100,6,70,1
	@@Unit Unit_Missiles,3,6,100,5,50,1
	@@Unit Unit_Missiles,0,7,100,5,50,1

	@@UnitArmyStart ArmyGreenEarth
	@@Unit Unit_Fighter,19,4,100,6,99,1
	@@Unit Unit_Fighter,19,8,100,6,99,1
	@@Unit Unit_Fighter,18,6,100,6,99,1
	@@Unit Unit_Bomber,20,6,100,6,99,1
	@@Unit Unit_Duster,20,2,100,9,99,1
	@@Unit Unit_Duster,20,10,100,9,99,1
	@@Unit Unit_BattleCopter,21,3,100,6,99,1
	@@Unit Unit_BattleCopter,21,9,100,6,99,1

	@@UnitListEnd

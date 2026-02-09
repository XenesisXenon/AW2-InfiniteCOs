;reinforcement_test
	;Unit Type, X co-ordinate, Y co-ordinate, HP, Ammo, Fuel, AI Type
AW4_reinforcement_test:
	@@UnitArmyStart ArmyOrangeStar
	@@Unit Unit_Infantry,4,6,100,0,99,AIUnitDefensive
	@@Unit Unit_Infantry,4,4,100,0,99,1
	@@Unit Unit_Rig,4,6,100,1,99,1

	@@UnitArmyStart ArmyBlueMoon
	@@Unit Unit_Mech,4,5,100,3,70,1

	@@UnitListEnd

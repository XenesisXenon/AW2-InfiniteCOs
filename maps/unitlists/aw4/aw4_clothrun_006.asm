;clothrun
	;Unit Type, X co-ordinate, Y co-ordinate, HP, Ammo, Fuel, AI Type
AW4_clothrun:
	@@UnitArmyStart ArmyOrangeStar
	@@Unit Unit_Infantry,2,1,100,100,100,AIUnitDefensive
	@@Unit Unit_Infantry,1,2,100,100,100,AIUnitDefensive
	@@Unit Unit_Tank,1,0,100,100,100,AIUnitDefensive
	@@Unit Unit_Artillery,1,1,100,100,100,AIUnitDefensive

	@@UnitArmyStart ArmyBlueMoon
	@@Unit Unit_Infantry,7,1,100,100,100,AIUnitDefensive
	@@Unit Unit_Infantry,8,2,100,100,100,AIUnitDefensive
	@@Unit Unit_Artillery,8,1,100,100,100,AIUnitDefensive
	@@Unit Unit_Tank,8,0,100,100,100,AIUnitDefensive

	@@UnitListEnd

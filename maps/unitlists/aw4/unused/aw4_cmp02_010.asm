;cmp02
	;Unit Type, X co-ordinate, Y co-ordinate, HP, Ammo, Fuel, AI Type
AW4_cmp02:
	@@UnitArmyStart ArmyOrangeStar
	@@Unit Unit_Infantry,8,7,100,0,99,1
	@@Unit Unit_Tank,6,5,100,0,70,1
	@@Unit Unit_Artillery,5,5,100,6,50,1

	@@UnitArmyStart ArmyBlueMoon
	@@Unit Unit_Infantry,9,5,100,0,99,AIUnitDefensive
	@@Unit Unit_Bike,13,3,100,0,70,AIUnitDefensive
	@@Unit Unit_Recon,12,4,80,0,80,1
	@@Unit Unit_Recon,9,4,60,0,80,AIUnitDefensive
	@@Unit Unit_Tank,15,5,70,6,70,1

	@@UnitListEnd

;randomtable.asm
;Used for testing the Random Unit List Function

UnitList_RandomTableTest:
	@@UnitArmyStart ArmyOrangeStar
	@@UnitRandom 0,0,AIUnitActive,RandomUnitTableTestTable
	@@UnitRandom 0,1,AIUnitActive,RandomUnitTableTestTable
	@@UnitRandom 0,2,AIUnitActive,RandomUnitTableTestTable
	@@UnitRandom 0,3,AIUnitActive,RandomUnitTableTestTable
	@@UnitRandom 0,4,AIUnitActive,RandomUnitTableTestTable
	@@UnitRandom 0,5,AIUnitActive,RandomUnitTableTestTable
	@@UnitRandom 0,6,AIUnitActive,RandomUnitTableTestTable
	@@UnitRandom 0,7,AIUnitActive,RandomUnitTableTestTable
	@@UnitRandom 0,8,AIUnitActive,RandomUnitTableTestTable
	@@UnitRandom 0,9,AIUnitActive,RandomUnitTableTestTable
	@@UnitRandom 0,10,AIUnitActive,RandomUnitTableTestTable
	
	@@UnitArmyStart ArmyBlueMoon
	@@UnitRandom 10,0,AIUnitActive,RandomUnitTableTestTable
	@@UnitRandom 10,1,AIUnitActive,RandomUnitTableTestTable
	@@UnitRandom 10,2,AIUnitActive,RandomUnitTableTestTable
	@@UnitRandom 10,3,AIUnitActive,RandomUnitTableTestTable
	@@UnitRandom 10,4,AIUnitActive,RandomUnitTableTestTable
	@@UnitRandom 10,5,AIUnitActive,RandomUnitTableTestTable
	@@UnitRandom 10,6,AIUnitActive,RandomUnitTableTestTable
	@@UnitRandom 10,7,AIUnitActive,RandomUnitTableTestTable
	@@UnitRandom 10,8,AIUnitActive,RandomUnitTableTestTable
	@@UnitRandom 10,9,AIUnitActive,RandomUnitTableTestTable
	@@UnitRandom 10,10,AIUnitActive,RandomUnitTableTestTable
		
	@@UnitListEnd
	

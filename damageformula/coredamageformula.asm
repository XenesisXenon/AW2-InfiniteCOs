;corefirepoweradditions.asm

;Function that returns a unit's Firepower stat boost/penalty. Starts at 0x08043070
CustomCOFirepowerBoost:
	;Load Correct Attacker
	ldr 	r1, [sp, 0x4]
	ldr 	r2, [sp, 0x8]
	mov 	r6, r0

	;New Firepower Adjustments are here
	ldr 	r0, [sp, 0x0]
	ldr 	r1, [sp, 0x4]
	ldr	r2, [sp, 0x8]	
	bl	COTerrainFirepowerBoost
	add	r6, r0, r6
	
	ldr 	r0, [sp, 0x0]
	ldr 	r1, [sp, 0x4]
	ldr	r2, [sp, 0x8]
	bl	COWeatherFirepowerBoost	
	add	r6, r0, r6
	
	ldr 	r0, [sp, 0x0]
	ldr 	r1, [sp, 0x4]
	ldr	r2, [sp, 0x8]
	bl	CODayBasedFirepowerBoost		
	
	;Original code here that applies the firepower Bonus to the base damage
	add	r0, r0, r6
	add 	r0, 100
	cmp 	r4, 0
	ble 	UnitDoesNoDamage
	mul 	r0, r4
	mov 	r1, 100
	bl 	DivisionFunction
	cmp 	r0, 0
	bne 	UnitDamageCalculationEnd
	mov 	r0, 1
	b 	UnitDamageCalculationEnd
UnitDoesNoDamage:
	mov 	r0, 0
UnitDamageCalculationEnd:
	add 	sp, 0xC
	pop 	{r4-r6}
	pop 	{r1}
	bx 	r1		
	
	.align
	.include damageformula/corecoterrainfirepowerboost.asm
	.include damageformula/corecodaybasedfirepowerboost.asm
	.include damageformula/coredefenceboost.asm
	.include damageformula/coredefencetotalcap.asm
	.include damageformula/terrainpoweradjustment.asm
	.include damageformula/coreweatherfirepowerboost.asm
	.include damageformula/coreterrainstardisplayadjustment.asm
	.include damageformula/coreinfoboxhpdisplayadjust.asm
	.include damageformula/CoreUnitHPDisplayHidden.asm
	.include damageformula/CoreDamageReflectionAbilityFunction.asm
;Blank Line	

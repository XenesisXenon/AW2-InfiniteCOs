;hookdamageformula.asm
;Adjustments and enhancements to the damage formula

;Firepower Boost Adjustment
.org 0x08043070
	push {r4-r6,r14}
	add sp, -0xC
	str r0, [sp, 0x0]
	str r1, [sp, 0x4]
	str r6, [sp, 0x8]
	ldr r6, [sp, 0x1C]
	ldr r5,=0x085D5ABC
	mov r4, 0x1A
	mul r4, r6
	add r3, r3, r4
	mov r4, 0x5C
	mul r4, r2
	add r3, r3, r4
	add r5, 0x1E
	add r3, r3, r5
	ldrb r4,[r3]
	bl 0x080430B0
;This BL gets this unit's firepower boost
	ldr r1,=CustomCOFirepowerBoost
	add r1, 0x1
	bx r1
	.pool
	
;Defence Boost Adjustment
.org 0x08042CF8
	push {r4-r6,r14}
	ldr r1,=CustomCODefenceBoost
	add r1, 0x1
	bx r1
	.pool	
	
;Terrain Boost Adjustments
.org 0x08043326
	bl 0x08043050
	ldr r1,=CustomCOTerrainAdjustment
	add r1, 0x1
	bx r1
	.pool

;Terrain Into Firepower Adjustments
.org 0x08043372
	ldr	r1,=TerrainIntoFirepowerMultiplier+1
	bx	r1
	.pool
	
;Caps the Defence if Defence > 200
;Original Calc (Infobox)
.org 0x08024E00
	ldr	r1,=DispDefenceTotalCap+1
	bx	r1
	.pool
;08024E0E	
	mov	r1,100
	bl	0x0808AAAC

;For the actual damage inflicted
;200-Def Cap
.org 0x08024E30
	ldr	r2,=DefenceTotalCap+1
	bx	r2
	.pool

;Luck Bonuses
.org 0x08042E64
	push	{r6,r14}
	add	sp,-0xC
	str	r0,[sp,0x8]
	ldr	r1,=0x08499598
	ldr	r2,[r1]
	mov	r1,0x3C
	mul	r1,r0
	add	r1,r1,r2
	ldrb	r0,[r1,0x1D]
	ldrb	r1,[r1,0x1E]
	;bl	0x08042E2C
	ldr	r2,=Damage_LuckBonus_Boost+1
	bx	r2
	.pool
	
.org 0x08042EBC
	
;Addition to Display Damage Ranges

;Calculator Code
.org 0x08024DC8
	ldr	r0,=DamageDisplayMaximumCalculator+1
	bx	r0
	.pool
;Display Code
.org 0x0802B4AE
	ldr	r3,=DamageDisplayMaximumDisplay+1
	bx	r3
	.pool
	
;Addition to add Damage Reflection
.org 0x0802518E
	ldr	r0,=DamageReflectionAbilityFunction+1
	bx	r0
	.pool

;Blank Line

;hookdamageformula.asm
;Adjustments and enhancements to the damage formula

;Firepower Boost Adjustment
.org 0x08043070
.area 0x40,0x0
	;Inputs: r0 = CO ID, r1 = CO Power State
	;r2 = Unit Attacker Type, r3 = Unit Defender Type
	;Assumes Battle Pointer is in r6.
	;Stack Inputs: sp+0x0 = Primary/Secondary Fire (0/1)
	push	{r4-r6,r14}
	add	sp,-0x8
	str	r2,[sp]
	str	r3,[sp,0x4]
	mov	r2,r6
	ldr	r3,=List_FirepowerCalculations
	ldr	r6,=Main_StatCalc+1
	bl	Sys_Branchr6
	ldr	r1,=Core_FirepowerBoost+1
	bx	r1
	.pool
.endarea
	
;Defence Boost Adjustment
.org 0x08042CF8
.area 0x24,0x0
	;Inputs: r0 = Player Number
	;Assumes Battle Pointer is in r5
	push {r4-r6,r14}
	ldr r1,=CustomCODefenceBoost+1
	bx r1
	.pool
.endarea
	
;Terrain Boost Adjustments
.org 0x08043326
	bl 0x08043050
	ldr r1,=CustomCOTerrainAdjustment
	add r1, 0x1
	bx r1
	.pool

;Terrain Into Firepower Adjustments
;Remove the original function and reimplement it elsewhere
.org 0x0804334C
.area	0x3F,0x0
	mov	r0,0x0
	bx	r14
.endarea
;.org 0x08043372
;	ldr	r1,=TerrainIntoFirepowerMultiplier+1
;	bx	r1
;	.pool

;Adds a hook for special ability shenanigans
;.org 0x08024B2C
;	ldr	r0,=Formula_HalfHPDamage+1
;	bx	r0
;	.pool

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

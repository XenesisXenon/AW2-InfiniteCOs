;copower_earthseal.asm

;Selects a unit to deploy
COPower_HeavenSeal:
	push	{r5-r7,r14}
	mov	r1,r0
	ldr	r0,=Script_EarthSeal;0x084A09CC
	bl	@LongBL_COPower_EarthSeal;0x0801C95C
	;Save r0
	mov	r4,r0

	;Check which units you don't have
	ldr	r0,=CurrentPlayerTurn
	ldrh	r0,[r0]
	mov	r1,0xC0
	lsl	r1,r1,0x2
	mul	r0,r1	
	mov	r5,0	;List Position
	mov	r6,0	;Unit Count
	ldr	r1,=BaseUnitOffset
	add	r0,r0,r1
	mov	r7,r0	;Base pointer to unit
	
@List_Start:	
	mov	r0,r7	
	ldr	r2,=@UnitList_COP
	ldrb	r2,[r2,r5]
	cmp	r2,0
	beq	@List_End
	
@Loop_Start:
	mov	r3,0xC
	mul	r3,r6
	ldrb	r3,[r0,r3]
	cmp	r2,r3	;Checks if unit is same
	beq	@List_Increment
	
	add	r6,1
	cmp	r6,50
	bgt	@List_Match	;Player has none of the unit
	b	@Loop_Start	
	
@List_Increment:
	add	r5,1
	mov	r6,0
	b	@List_Start

@List_End:
	mov	r2,Unit_APC
@List_Match:
	mov	r0,r4
	str	r2,[r0,0x54]
	pop	{r5-r7}
	pop	{r0}
	bx	r0
	.pool
	
@LongBL_COPower_EarthSeal:
	LongBL r2,0x0801C95D
		
@UnitList_COP:
	.db	Unit_Neotank
	.db	Unit_Bomber
	.db	Unit_Rockets
	.db	Unit_MidTank
	.db	Unit_BattleCopter
	.db	Unit_Tank
	.db	Unit_Artillery
	.db	Unit_AntiAir
	.db	Unit_Recon
	.db	Unit_Mech
	.db	Unit_Infantry
	.db	0x0
	
	.align 4
;Blank Line
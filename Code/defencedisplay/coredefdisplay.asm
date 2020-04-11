;coredefdisplay.asm

	@RamTable_COStats	equ CustomForceRankRAM+(ForceRank_Slot_Total*8)
	RamTable_FakeUnit	equ 0x02022984
	@RamTable_FakeBattle	equ @RamTable_COStats+0x10
	;Use the same RAM offset that the force rank display does

Dossier_MoveDelta_Calculation:
	push	{r4-r7,r14}
	mov	r7,r0
	mov	r6,r1
	
	ldr	r5,=0x08499598
	ldr	r1,[r5]
	mov	r2,r7
	lsl	r0,r2,0x4
	sub	r0,r0,r2
	lsl	r4,r0,0x2
	add	r1,r4,r1
	ldrb	r0,[r1,0x1D]
	ldrb	r1,[r1,0x1E]
	mov	r2,r6
	bl	LongBL_Gather_MoveTotal;0x08043190
	
	cmp	r0,0x0
	beq	@@Unit_End	;0x0808586C
	
	mov	r0,r7
	mov	r1,r6
	bl	@Long_Calc_MoveDeltaGraphic;0x08085638
	b	@@Get_Graphic
	
@@Unit_End:
	mov	r0,0
@@Get_Graphic:
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	.pool

@Long_Calc_MoveDeltaGraphic:
	LongBL	r2,0x08085638+1
	
Dossier_RangeDelta_Calculation:
	push	{r4-r7,r14}
	mov	r7,r0
	mov	r6,r1
	
	ldr	r5,=0x08499598
	ldr	r1,[r5]
	mov	r2,r7
	lsl	r0,r2,0x4
	sub	r0,r0,r2
	lsl	r4,r0,0x2
	add	r1,r4,r1
	ldrb	r0,[r1,0x1D]
	ldrb	r1,[r1,0x1E]
	mov	r2,r6
	bl	LongBL_Gather_RangeTotal
	
	cmp	r0,0x0
	beq	@@Unit_End	;0x0808586C
	
	mov	r0,r7
	mov	r1,r6
	bl	@Long_Calc_RangeDeltaGraphic;0x08085638
	b	@@Get_Graphic
	
@@Unit_End:
	mov	r0,0
@@Get_Graphic:
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	.pool

@Long_Calc_RangeDeltaGraphic:
	LongBL	r2,0x080856A0+1	
	
Dossier_SandstormCalculation:
	lsl 	r0, r0, 0x0
	ldr	r1,=Table_DossierUnitOrder
	mov	r2,r8
	lsl	r0,r2,0x1
	add	r0,r0,r1
	ldrh	r6,[r0]
	
	;Check the current weather is sandstorm
	ldr	r0,=CurrentGameOptions
	add	r0,GameRule_ActiveWeather
	ldrb	r0,[r0]
	cmp	r0,CurrentWeatherSandstorm
	bne	@Sandstorm_Return
	
	sub	r6,1
	
@Sandstorm_Return:
	ldr	r1,=0x0808573A+1
	bx	r1
	.pool
	

FirepowerBarCalculation:
	;Input: r0 = Player ID, r1 = Unit ID
	push	{r4-r7,r14}
	mov	r7, r0	;Player ID
	mov	r6, r1	;Unit ID
	
	;Generate a Fake "Unit" here for the correct player at the correct loc
	;Default is a full HP Infantry at 0,0
	ldr	r0,=RamTable_FakeUnit
	ldr	r1,=0x300
	mov	r2,r7
	sub	r2,1
	mul	r1,r2
	add	r0,r0,r1
	
	ldr	r1,=@Table_FakeUnit
	ldr	r2,[r1]
	str	r2,[r0]
	ldr	r2,[r1,0x4]
	str	r2,[r0,0x4]
	ldr	r2,[r1,0x8]
	str	r2,[r0,0x8]
	str	r6,[r0]		;Store the actual Unit ID
	strb	r7,[r0,0xB]	;Store the PID
	
	;Generate a Fake "Battle"
	ldr	r0,=RamTable_FakeUnit
	ldr	r1,=0x300
	mov	r2,r7
	sub	r2,1
	mul	r1,r2
	add	r1,r0,r1
	ldr	r0,=@RamTable_FakeBattle
	
	str	r1,[r0]
	mov	r1,0
	mov	r2,7
	lsl	r2,r2,0x2
@FakeBattle_LoopStart:	
	str	r1,[r0,r2]
	sub	r2,4
	cmp	r2,0
	bgt	@FakeBattle_LoopStart
	
	;Prep for Damage Calculation
	mov	r0,r7	;Player ID
	sub	r0,1
	ldr	r1,=BasePlayerMemory
	mov	r2,0x3C
	mul	r0,r2
	add	r0,r0,r1
	ldrb	r1,[r0,0x1E]
	ldrb	r0,[r0,0x1D]
	mov	r2,r6
	mov	r3,1
	ldr	r6,=@RamTable_FakeBattle
	bl	@Dossier_FirepowerStatCalc	
	bl	@Calculation_BarGraphic
	
	;Clear Fake Unit (Preserve r0)
	ldr	r1,=RamTable_FakeUnit
	mov	r2,0
	str	r2,[r1]
	str	r2,[r1,0x4]
	str	r2,[r1,0x8]	
	
	pop	{r4-r7}
	pop 	{r1}
	bx r1	
	.pool

DefenceBarCalculation:
	;Input: r0 = Player ID, r1 = Unit ID
	push	{r4-r7,r14}
	mov	r7, r0	;Player ID
	mov	r6, r1	;Unit ID
	
	;Generate a Fake "Unit" here for the correct player.
	;Default is a full HP Infantry at 0,0
	ldr	r0,=RamTable_FakeUnit
	ldr	r1,=0x300
	mov	r2,r7
	sub	r2,1
	mul	r1,r2
	add	r0,r0,r1
	
	ldr	r1,=@Table_FakeUnit
	ldr	r2,[r1]
	str	r2,[r0]
	ldr	r2,[r1,0x4]
	str	r2,[r0,0x4]
	ldr	r2,[r1,0x8]
	str	r2,[r0,0x8]
	str	r6,[r0]		;Store the actual Unit ID
	strb	r7,[r0,0xB]	;Store the PID
	
	;Generate a Fake "Battle"
	ldr	r0,=RamTable_FakeUnit
	ldr	r1,=0x300
	mov	r2,r7
	sub	r2,1
	mul	r1,r2
	add	r1,r0,r1
	ldr	r0,=@RamTable_FakeBattle
	
	str	r1,[r0]
	mov	r1,0
	mov	r2,7
	lsl	r2,r2,0x2
@DefFakeBattle_LoopStart:	
	str	r1,[r0,r2]
	sub	r2,4
	cmp	r2,0
	bgt	@DefFakeBattle_LoopStart
	
	;Prep for Damage Calculation
	mov	r0,r7	;Player ID
	sub	r0,1
	ldr	r1,=BasePlayerMemory
	mov	r2,0x3C
	mul	r0,r2
	add	r0,r0,r1
	ldrb	r1,[r0,0x1E]
	ldrb	r0,[r0,0x1D]
	mov	r2,r6
	mov	r3,1
	ldr	r6,=@RamTable_FakeBattle
	bl	@Dossier_DefenceStatCalc	
	bl	@Calculation_BarGraphic
	
	;Clear Fake Unit (Preserve r0)
	ldr	r1,=RamTable_FakeUnit
	mov	r2,0
	str	r2,[r1]
	str	r2,[r1,0x4]
	str	r2,[r1,0x8]
	
	mov	r2,0xC
	lsl	r2,r2,0x6
	add	r1,r1,r2
	mov	r2,0
	str	r2,[r1]
	str	r2,[r1,0x4]
	str	r2,[r1,0x8]
	
	mov	r2,0xC
	lsl	r2,r2,0x6
	add	r1,r1,r2
	mov	r2,0
	str	r2,[r1]
	str	r2,[r1,0x4]
	str	r2,[r1,0x8]
	
	mov	r2,0xC
	lsl	r2,r2,0x6
	add	r1,r1,r2
	mov	r2,0
	str	r2,[r1]
	str	r2,[r1,0x4]
	str	r2,[r1,0x8]

	pop	{r4-r7}
	pop 	{r1}
	bx r1	
	.pool

@Calculation_BarGraphic:
	push	{r4,r14}
	mov	r1,0
	ldr	r4,=@Table_FirepowerBars
@BarGraphic_LoopStart:	
	ldsb	r2,[r4,r1]
	mov	r3,0
	sub	r3,1
	cmp	r2,r3
	beq	@BarGraphic_Loop_BoundsOver
	cmp	r0,r2
	bge	@BarGraphic_ValueFound
	add	r1,2
	b	@BarGraphic_LoopStart
	
@BarGraphic_ValueFound:
	add	r1,1
	ldrb	r0,[r4,r1]
	b	@BarGraphic_End
	
@BarGraphic_Loop_BoundsOver:
	mov	r0,0x9E
@BarGraphic_End:	
	pop	{r4}
	pop	{r1}
	bx	r1
	.pool
	

@CommonBarCalculation:
	push {r2}
	ldr r2,=@Table_FirepowerBars
	add r0, 0x1E
	cmp r0, 0x0
	bgt @StatBoostNotReached
	mov r0, 0x0
@StatBoostNotReached:
	ldrb r1, [r2]
	cmp r0, r1
	bge @StatBoostReached
	add r2, 0x2
	b @StatBoostNotReached
@StatBoostReached:
	ldrb	r0, [r2, 0x1]
	pop 	{r2}
	pop	{r4-r7}
	pop 	{r1}
	bx r1
	.pool

@LongBLFirepowerGatherer:
	ldr r3,=0x080430B1
	bx r3
	.pool

@LongBLDefenceGatherer:
	ldr r3,=0x08043121
	bx r3
	.pool

@Dossier_FirepowerStatCalc:
	;Inputs: r0 = CO ID, r1 = CO Power State
	;r2 = Unit Attacker Type, r3 = Unit Defender Type
	;Assumes Battle Pointer is in r6.
	;Stack Inputs: sp+0x0 = Primary/Secondary Fire (0/1)
	push	{r4-r6,r14}
	add	sp,-0x8
	str	r2,[sp]
	str	r3,[sp,0x4]
	mov	r2,r6
	ldr	r3,=List_CODossier_FirepowerCalculations
	ldr	r6,=Main_StatCalc+1
	bl	@Local_Branchr6
	add	sp,0x8
	pop	{r4-r6}
	pop	{r1}
	bx	r1
	.pool
	
@Dossier_DefenceStatCalc:
	;Inputs: r0 = CO ID, r1 = CO Power State
	;r2 = Unit Attacker Type, r3 = Unit Defender Type
	;Assumes Battle Pointer is in r6.
	;Stack Inputs: sp+0x0 = Primary/Secondary Fire (0/1)
	push	{r4-r6,r14}
	add	sp,-0x8
	str	r2,[sp]
	str	r3,[sp,0x4]
	mov	r2,r6
	ldr	r3,=List_CODossier_DefenceCalculations
	ldr	r6,=Main_StatCalc+1
	bl	@Local_Branchr6
	add	sp,0x8
	pop	{r4-r6}
	pop	{r1}
	bx	r1
	.pool	
	
@Local_Branchr6:
	bx	r6
	
	.align 4	
@Table_FirepowerBars:
	;Each Value is firepower followed by graphic associated
	.db	100,0xA7
	.db	90,0xA7
	.db	80,0xA7
	.db	75,0xA7
	.db	70,0xA6
	.db	60,0xA5
	.db	50,0xA4
	.db	40,0xA3
	.db	30,0xA2
	.db	20,0xA1
	.db	15,0xA0
	.db	10,0x9F
	.db	00,0x9E
	.db	-10,0x9B
	.db	-20,0x9C
	.db	-30,0x9D
	.db	0xFF,0xFF
	
	.align 4	
Table_DossierUnitOrder:
	.dh	Unit_Infantry
	.dh	Unit_Mech
	.dh	00
	.dh	Unit_APC
	.dh	Unit_Recon
	.dh	Unit_Tank
	.dh	Unit_MidTank
	.dh	Unit_Neotank
	.dh	Unit_Artillery
	.dh	Unit_Rockets
	.dh	Unit_Missiles
	.dh	00
	.dh	Unit_Fighter
	.dh	Unit_Bomber
	.dh	Unit_BattleCopter
	.dh	Unit_TransportCopter
	.dh	Unit_Battleship
	.dh	Unit_Cruiser
	.dh	Unit_Sub
	.dh	Unit_Lander
	.dh	00

	.align 4	
@Table_FakeUnit:
	.db	Unit_Infantry
	.db	0
	.db	0
	.db	0
	.db	100
	.db	2
	.db	99
	.db	0
	.db	0
	.db	0
	.db	0
	.db	0
;Blank Line
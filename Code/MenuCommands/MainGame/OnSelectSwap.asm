;OnSelectSwap.asm
;Swaps the Two COs

MenuOnSelectSwap:
	push	{r14}
	push	{r4-r7}
	
	;Swap COs here
	ldr	r4,=CurrentPlayerTurn		;Swap COs
	ldrb	r4,[r4]
	sub	r4,1
	mov	r5,8
	mul	r5,r4

	mov	r0,0x3C
	mul	r0,r4
	ldr	r1,=BasePlayerMemory
	add	r0,r0,r1	;Player RAM in r0

	ldr	r4,=CustomSwapCORam
	add	r4,r4,r5	;CO Swap RAM in r4

	ldrb	r1,[r0,0x1D]	;Load COs, Swap COs
	ldrb	r2,[r4,4]
	strb	r2,[r0,0x1D]
	strb	r1,[r4,4]

	ldr	r1,[r0,0x20]	;Load CO Charge, Swap CO Charge
	ldr	r2,[r4]
	str	r2,[r0,0x20]
	str	r1,[r4]

	mov	r6,0x25
	ldrb	r1,[r0,r6]		;Load COP Uses, Swap COP Uses
	ldrb	r2,[r4,0x5]
	strb	r2,[r0,r6]
	strb	r1,[r4,0x5]

	mov	r1,0			;Blank Temp Power and CO Power Status
	strb	r1,[r0,0x1E]
	mov	r2,0x26
	strh	r1,[r0,r2]
	mov	r2,0x28
	strh	r1,[r0,r2]

	ldr	r0,=CurrentPlayerTurn	;Load Force Ranks, Swap Force Ranks
	ldrb	r0,[r0]
	sub	r0,1
	mov	r1, ForceRank_Slot_Total
	mul	r0,r1
	mov	r2,4
	mul	r2,r1
	ldr	r1,=CustomForceRankRAM
	add	r0,r0,r1	;In-play ranks
	add	r1,r0,r2	;Out-Play ranks
	mov	r2, ForceRank_Slot_Total

@ForceRankLoop_Start:
	ldrb	r3,[r0]
	ldrb	r4,[r1]
	strb	r3,[r1]
	strb	r4,[r0]
	add	r0,1
	add	r1,1
	sub	r2,1
	cmp	r2,0x0
	bgt	@ForceRankLoop_Start
					

	pop	{r4-r7}
	;pop	{r0}
	
;CO Power Command
	;push	{r4,r14}
	push	{r4}
	bl	@Long_OnSelectSwap_One;0x0801A168
	ldr	r1,=0x030044B0
	ldr	r0,=0x03001FD4
	ldr	r0,[r0]
	str	r0,[r1,0x8]
	ldr	r0,=CurrentGameOptions
	add	r0,0x32
	ldrb	r0,[r0]
	ldr	r4,=0x08090BF8
	cmp	r0,0x0
	beq	@Jump_One
	ldr	r0,[r4]
	ldrb	r2,[r0]
	mov	r0,0xF
	mov	r1,0x0
	mov	r3,0x0
	bl	@Long_OnSelectSwap_Two;0x08034534
@Jump_One:
	ldr	r0,[r4]
	ldrh	r0,[r0]
	mov	r1,0x4
	bl	@Long_OnSelectSwap_Three;0x0804438C
	bl	@Long_OnSelectSwap_Four;0x08024268
	pop	{r4}
	;pop	{r0}
	;bx	r0
	
;End Turn Command
	;push	{r14}
	bl	@Long_OnSelectSwap_One;0x0801A168
	bl	@Long_OnSelectSwap_Five;0x08042B9C
	ldr	r1,=CurrentGameOptions
	mov	r0,r1
	add	r0,0x32
	ldrb	r0,[r0]
	cmp	r0,0x0
	beq	@Jump_Two
	mov	r0,r1
	add	r0,0x2E
	ldrb	r0,[r0]
	bl	@Long_OnSelectSwap_Six;0x080344F0
@Jump_Two:
	pop	{r0}
	bx	r0
	.pool

@Long_OnSelectSwap_One:
	LongBL	r0,0x0801A168+1
	
@Long_OnSelectSwap_Two:
	push	{r4-r6,r14}
	LongBL	r5,0x08034536+1

@Long_OnSelectSwap_Three:
	push	{r4,r5,r14}
	LongBL	r4,0x0804438E+1
	
@Long_OnSelectSwap_Four:
	LongBL	r0,0x08024268+1
	
@Long_OnSelectSwap_Five:
	LongBL	r1,0x08042B9C+1
	
@Long_OnSelectSwap_Six:
	LongBL	r3,0x080344F0+1

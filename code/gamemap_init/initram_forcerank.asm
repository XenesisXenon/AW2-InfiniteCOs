;initram_forcerank.asm

InitialiseGameRulesRAM_ForceRankExpansion:
	push	{r4,r5,r14}

	ldr	r0,=CustomForceRankRAM		;Location of Data
	mov	r1, ForceRank_Slot_Total	;Length of Data
	lsl	r1,r1,0x2
	mov	r2,0

@InitialisePlayerRamFunction_ForceRankLoopStart:
	strb	r2,[r0]
	add	r0,1
	sub	r1,1
	cmp	r1,0x0
	bgt	@InitialisePlayerRamFunction_ForceRankLoopStart

	ldr	r0,=CustomSwapCORam	;Location of Data
	mov	r1, (8*4)	;Length of Data
	mov	r2,0

@InitialisePlayerRamFunction_COSwapLoopStart:
	strb	r2,[r0]
	add	r0,1
	sub	r1,1
	cmp	r1,0x0
	bgt	@InitialisePlayerRamFunction_COSwapLoopStart

	ldr	r0,=CustomSwapCORam	;Location of Data
	mov	r2,0xFF
	mov	r1,4
	
@InitialisePlayerRamFunction_COSwapTagCOLoopStart:
	strb	r2,[r0,0x4]
	add	r0,8
	sub	r1,1
	cmp	r1,0
	bgt	@InitialisePlayerRamFunction_COSwapTagCOLoopStart
	
	ldr	r0,=CurrentGameOptions+GameRule_GameMode
	ldrb	r0,[r0]
	cmp	r0,GameMode_Versus
	bne	@InitialisePlayerRamFunction_COSwap_End

@SetupVersus_RulesTransfer_Expansion:
	ldr	r1,=Custom_Versusmenu_ForceBuffer
	ldr	r2,=CustomForceRankRAM
	mov	r3,16
@SetupVersus_RulesTransfer_Expansion_Loop:	
	ldrb	r0,[r1]
	strb	r0,[r2]
	sub	r3,1
	add	r1,1
	add	r2,1
	cmp	r3,0x0
	bge	@SetupVersus_RulesTransfer_Expansion_Loop	
	
@InitialisePlayerRamFunction_COSwap_End:
	pop	{r4,r5}
	pop	{r0}
	bx	r0
	.pool

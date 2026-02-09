;core_freecoselect.asm

FreeCOSelect:
	mov	r0,UnlockBoolean_Custom_CampaignCO
	sub	r0,0x20
	mov	r1,1
	lsl	r1,r0
	ldr	r0,=CurrentUnlockedStatus
	ldr	r0,[r0]
	and	r0,r1
	cmp	r0,0x0
	bne	@Free_COSelect
	
	;Original Code
	ldr	r0,[r5,0x3C]
	cmp	r0,0x0
	bne	@No_COSelect
	ldr	r0,[r5,0x38]
	bl	@Long_RunFunction;0x0808BBBC
	b	@Function_End
@No_COSelect:
	bl	@No_COSelect_SetRAM;0x0803BD54
	mov	r0,r5
	mov	r1,0x8
	bl	@Long_RunScript;0x0801CBC8
	b	@Function_End
	
@Free_COSelect:
	ldr	r0,=GameSetup_FreeCampaignCOList+1
	;ldr	r0,=0x08078884+1
	bl	@Long_RunFunction
	
@Function_End:	
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool

@Long_RunFunction:
	bx	r0
	
@Long_RunScript:
	push	{r4-r6,r14}
	ldr	r4,=0x0801CBCA+1
	bx	r4
	.pool
	
@No_COSelect_SetRAM:
	ldr	r1,=0x030030F0
	mov	r0,0x1
	strb	r0,[r1,r2]
	bx	r14
	
FreeCO_EnablePickedCO:
	ldr	r0,=CurrentGameOptions
	add	r0,GameRule_AISetting
	add	r0,r0,r3
	ldrb	r0,[r0]
	cmp	r0,AISetting_Human
	bne	@Standard_PickedCOCheck

	mov	r0,UnlockBoolean_Custom_CampaignCO
	sub	r0,0x20
	mov	r2,1
	lsl	r2,r0
	ldr	r0,=CurrentUnlockedStatus
	ldr	r0,[r0]
	and	r0,r2
	cmp	r0,0x0
	bne	@Use_FreeCOPick
	
@Standard_PickedCOCheck:
	mov	r2,r12
	ldrb	r0,[r2,0x2]
	mul	r0,r5
	add	r0,r4,r0
	add	r0,r8
	ldrb	r0,[r0]
	ldr	r1,=0x0803656E+1
	bx	r1
	
@Use_FreeCOPick:
	ldr	r1,=0x08036572+1
	bx	r1	
	.pool
	
FreeCO_MinSurplus:
	mov	r0,r3
	cmp	r0,1
	bge	@Surplus_End
	mov	r0,1
	
@Surplus_End:	
	pop	{r4}
	pop	{r1}
	bx	r1
	
GameSetup_FreeCampaignCOList:
	push	{r14}
	;0x080785FC
	ldr	r1,=0x03005944
	mov	r0,0
	str	r0,[r1]
	
	mov	r0,0x5
	ldr	r1,=0x03005944
	str	r0,[r1]
	
	add	r1,0x4
	mov	r0,0x5
	strb	r0,[r1]
	mov	r0,0x3
	strb	r0,[r1,0x1]
	mov	r0,0x3
	strb	r0,[r1,0x2]
	mov	r0,0x3
	strb	r0,[r1,0x3]
	mov	r0,0x5
	strb	r0,[r1,0x4]
	
	ldr	r0,=@Table_Campaign_COList
	ldr	r1,=0x03000658
@Loop_Start:	
	ldrb	r2,[r0]
	cmp	r2,0xFF
	beq	@Table_End
	strb	r2,[r1]
	add	r0,1
	add	r1,1
	b	@Loop_Start
@Table_End:
	;Enable P1-P4 Free selection
	ldr	r0,=0x030059C0
	mov	r1,1
	str	r1,[r0]
	str	r1,[r0,0x4]
	str	r1,[r0,0x8]
	str	r1,[r0,0xC]
	
	;Set correct default colours for the menu
	ldr	r0,=0x03005958
	mov	r1,0
	strb	r1,[r0]
	add	r1,1
	strb	r1,[r0,0x1]
	add	r1,2
	strb	r1,[r0,0x2]
	sub	r1,1
	strb	r1,[r0,0x3]
	add	r1,2
	strb	r1,[r0,0x4]
	
	pop	{r0}
	bx	r0
	.pool
	
@Table_Campaign_COList:
	.db	CONell,COAndy,COSami,COMax,COHachi
	.db	COOlaf,COGrit,COColin
	.db	COKanbei,COSonja,COSensei
	.db	COEagle,CODrake,COJess
	.db	COFlak,COLash,COAdder,COHawke,COSturm
	.db	0xFF
	
	.align 4	
@GameSetup_ArmyBuild:
	push	{r4,r14}
	ldr	r2,=0x03005958
	ldr	r4,=0x03005944
	ldr	r1,[r4]
	add	r1,r1,r2
	mov	r2,0x0
	strb	r2,[r1]
	ldr	r2,=0x03000658
	add	r3,r0,r2
	mov	r1,0x1
	strb	r1,[r3]
	add	r0,1
	add	r2,r0,r2
	mov	r1,0x2
	strb	r1,[r2]
	add	r0,1
	ldr	r1,[r4]
	add	r1,1
	str	r1,[r4]
	pop	{r4}
	pop	{r1}
	bx	r1
	.pool

;CO Surplus 0x0803BD48
Core_Dynamic_Colour:
	;New code
	cmp	r0,GameMode_Campaign
	beq	@Campaign_ColourFix
	
	mov	r4,1
	ldr	r6,=0x08090A80
	mov	r5,0x3C
	ldr	r0,=Dynamic_Colour_Return+1
	bx	r0
	
@Campaign_ColourFix:
	mov	r4,1
	ldr	r6,=0x08090A80
	mov	r5,0x3C
	
@Colour_Loop_Start:	
	mov	r0,r4
	bl	@Long_Colour_One;0x08042DFC
	mov	r1,r0
	mov	r0,r4
	bl	@Long_Colour_Two;0x08026AC0
	ldr	r1,[r6]
	ldr	r1,[r1]
	add	r1,r5,r1
	cmp	r0,0x5	;Are we a BH Army?
	bne	@Colour_Loop_Standard
	ldrb	r0,[r1,0x1B]	;Check for AI in campaign, only AI can be BH
	cmp	r0,0x2		;Or BH invention maps break
	beq	@Colour_Loop_IsAI
	
	;mov	r0,0x1	;Orange Star
	;ldrb	r0,[r1,0x1A]
	
	b	@Colour_Loop_Standard
	
@Colour_Loop_IsAI:
	mov	r0,0x5	;Black Hole
	
@Colour_Loop_Standard:	
	;strb	r0,[r1,0x1A]
	add	r5,0x3C
	add	r4,0x1
	cmp	r4,0x4
	ble	@Colour_Loop_Start
	pop	{r4-r6}
	pop	{r0}
	bx	r0
	.pool

@Long_Colour_One:
	LongBL	r1,0x08042DFC+1
	
@Long_Colour_Two:
	LongBL	r3,0x08026AC0+1
	
DuplicateArmy_Enable_Up:
	mov	r0,UnlockBoolean_Custom_CampaignCO
	sub	r0,0x20
	mov	r1,1
	lsl	r1,r0
	ldr	r0,=CurrentUnlockedStatus
	ldr	r0,[r0]
	and	r0,r1
	cmp	r0,0x0
	bne	@DuplicateArmy_CampaignCO_On_Up
	
	ldr	r0,[r7,0x58]
	sub	r0,1
	str	r0,[r7,0x58]
	ldr	r1,=0x03005910
	add	r0,r0,r1
	ldrb	r0,[r0]
	mov	r6,r7
	add	r6,0x4C
	ldr	r2,=0x0807D146+1
	bx	r2

@DuplicateArmy_CampaignCO_On_Up:
	ldr	r0,[r7,0x58]
	sub	r0,1
	str	r0,[r7,0x58]
	ldr	r1,=0x03005910
	add	r0,r0,r1
	ldrb	r0,[r0]
	mov	r6,r7
	add	r6,0x4C
	ldr	r2,=0x081D9360
	mov	r10,r2
	ldr	r2,=0x0807D168+1
	bx	r2
	.pool
	
DuplicateArmy_Enable_Down:
	mov	r0,UnlockBoolean_Custom_CampaignCO
	sub	r0,0x20
	mov	r1,1
	lsl	r1,r0
	ldr	r0,=CurrentUnlockedStatus
	ldr	r0,[r0]
	and	r0,r1
	cmp	r0,0x0
	bne	@DuplicateArmy_CampaignCO_On_Down

	ldr	r3,=0x03005910
	ldr	r2,[r7,0x58]
	add	r0,r2,r3
	ldrb	r0,[r0]
	mov	r6,r7
	add	r6,0x4C
	ldr	r1,=0x0807D26E+1
	bx	r1
	;ldr	r1,=0x081D9360
	;mov	r10,r1
	;cmp	r0,0x0
	
@DuplicateArmy_CampaignCO_On_Down:
	ldr	r3,=0x03005910
	ldr	r2,[r7,0x58]
	add	r0,r2,r3
	ldrb	r0,[r0]
	mov	r6,r7
	add	r6,0x4C
	ldr	r1,=0x081D9360
	mov	r10,r1
	;cmp	r0,0x0
	ldr	r2,=0x0807D290+1
	bx	r2
	.pool

;DuplicateCO_Enable:
;	mov	r5,r0
	
;	mov	r0,UnlockBoolean_Custom_CampaignCO
;	sub	r0,0x20
;	mov	r1,1
;	lsl	r1,r0
;	ldr	r0,=CurrentUnlockedStatus
;	ldr	r0,[r0]
;	and	r0,r1
;	cmp	r0,0x0
;	bne	@DuplicateCO_Enable_True

;	mov	r6,0x0
;	add	r0,0x64
;	mov	r1,0x0
;	ldsh	r0,[r0,r1]
;	ldr	r7,=0x0807D80C+1
;	bx	r7
	
;@DuplicateCO_Enable_True:
;	mov	r0,0x1
;	pop	{r4-r7}
;	pop	{r1}
;	bx	r1
;	.pool
	
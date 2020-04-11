;hook_freecoselect.asm
;Allows you to freely choose your COs when enabled.

.org 0x08026A48
	;This function sets the colour in War Room/Campaign mode
	;Fix for Black hole in Campaign
	push	{r4-r6,r14}
	ldr	r0,=CurrentGameOptions
	ldrb	r0,[r0,GameRule_GameMode]
	cmp	r0,0x2
	bgt	@Colour_Default
	cmp	r0,0x1
	blt	@Colour_Default
	
	ldr	r4,=Core_Dynamic_Colour+1
	bx	r4
Dynamic_Colour_Return:	
@Colour_Loop_Start:	
	mov	r0,r4
	bl	0x08042DFC
	mov	r1,r0
	mov	r0,r4
	bl	0x08026AC0
	ldr	r1,[r6]
	ldr	r1,[r1]
	add	r1,r5,r1
	strb	r0,[r1,0x1A]
	add	r5,0x3C
	add	r4,0x1
	cmp	r4,0x4
	ble	@Colour_Loop_Start
	
@Colour_Default:
	pop	{r4-r6}
	pop	{r0}
	bx	r0
	.pool

.org 0x08036562
	;This function is part of the map setup - transfers the 
	;game rules to the player data
	ldr	r2,=FreeCO_EnablePickedCO+1
	bx	r2
	.pool

.org 0x0803BD42
	;This function generates the number of surplus COs
	ldr	r0,=FreeCO_MinSurplus+1
	bx	r0
	.pool
	
.org 0x08077F9C
	;This picks whether to use the CO Select or just
	;run a standard CO pick
	push	{r4-r7,r14}
	mov	r5,r0
	mov	r0,0x0
	bl	0x080638D0
	ldr	r2,=0x03003FC0
	ldr	r6,=0x08615194
	ldr	r4,=0x0202FDFC
	ldr	r1,[r4,0xC]
	lsl	r0,r1,0x1
	add	r0,r0,r1
	lsl	r0,r0,0x4
	add	r0,r0,r6
	ldrh	r0,[r0]
	strh	r0,[r2,0x2]
	ldr	r7,=0x030046B4
	bl	0x0803866C	
	cmp	r0,0x0
	beq	@Normal_Campaign
	
	ldr	r0,[r4,0xC]
	lsl	r1,r0,0x1
	add	r1,r1,r0
	lsl	r1,r1,0x4
	mov	r0,r6
	add	r0,0x28
	b	@Hard_Campaign
	
@Normal_Campaign:
	ldr	r0,[r4,0xC]
	lsl	r1,r0,0x1
	add	r1,r1,r0
	lsl	r1,r1,0x4
	mov	r0,r6
	add	r0,0x24
	
@Hard_Campaign:
	add	r1,r1,r0
	ldr	r0,[r1]
	str	r0,[r7]
	
	ldr	r0,=FreeCOSelect+1
	bx	r0
	.pool

;	ldr	r0,[r5,0x3C]
;	cmp	r0,0x0
;	bne	@No_COSelect
;	ldr	r0,[r5,0x38]
;	bl	0x0808BBBC
;	b	@Function_End
;@No_COSelect:
;	bl	0x0803BD54
;	mov	r0,r5
;	mov	r1,0x8
;	bl	0x0801CBC8
;@Function_End:	
;	pop	{r4-r7}
;	pop	{r0}
;	bx	r0
	

.org 0x0807D136
	;Enable multiple same-army selection
	ldr	r0,=DuplicateArmy_Enable_Up+1
	bx	r0
	.pool

.org 0x0807D262
	ldr	r3,=DuplicateArmy_Enable_Down+1
	bx	r3
	.pool
	
;.org 0x0807D802
	;Currently broken - unintended interactions
;	ldr	r5,=DuplicateCO_Enable+1
;	bx	r5
;	.pool
;Blank Line
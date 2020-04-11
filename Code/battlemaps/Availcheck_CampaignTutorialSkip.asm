;AvailCheck_campaigntutorialskip.asm
;Checks whether the Campaign COs Bit is Off
;Returns 0 if Off
;Returns 1 if On

AvailCheck_CampaignTutorialSkip_IsOff:
	push	{r14}
	mov	r0,UnlockBoolean_Custom_TutorialSkip
	bl	Long_GlobalBitCheck;0x0803CBD8
	cmp	r0,0x0
	beq	@Option_Off
	mov	r0,1
	neg	r0,r0
	b	@End
@Option_Off:
	mov	r0,1
@End:	
	pop	{r1}
	bx	r1
	.pool

AvailCheck_CampaignTutorialSkip_IsOn:
	push	{r14}
	mov	r0,UnlockBoolean_Custom_TutorialSkip
	bl	Long_GlobalBitCheck;0x0803CBD8
	cmp	r0,0x0
	bne	@Option_On
	mov	r0,0
	b	@End2
@Option_On:
	mov	r0,1
@End2:	
	pop	{r1}
	bx	r1
	.pool

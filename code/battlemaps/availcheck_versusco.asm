;AvailCheck_versusco.asm
;Checks what VS COs are available
;Returns 0 if Off
;Returns 1 if On

AvailCheck_VersusCO_Default:
	push	{r14}
	mov	r0,UnlockBoolean_Custom_VersusAW1
	bl	Long_GlobalBitCheck;0x0803CBD8
	cmp	r0,0x0
	bne	@Option_Show
	mov	r0,UnlockBoolean_Custom_VersusAW2
	bl	Long_GlobalBitCheck;0x0803CBD8
	cmp	r0,0x0
	bne	@Option_Show
	mov	r0,UnlockBoolean_Custom_VersusAW3
	bl	Long_GlobalBitCheck;0x0803CBD8
	cmp	r0,0x0
	bne	@Option_Show
	mov	r0,UnlockBoolean_Custom_VersusCCO
	bl	Long_GlobalBitCheck;0x0803CBD8
	cmp	r0,0x0
	bne	@Option_Show
	mov	r0,UnlockBoolean_Custom_VersusSFW
	bl	Long_GlobalBitCheck;0x0803CBD8
	cmp	r0,0x0
	bne	@Option_Show

	mov	r0,1
	neg	r0,r0
	b	@End
	
@Option_Show:
	mov	r0,1
@End:	
	pop	{r1}
	bx	r1
	.pool

AvailCheck_VersusCO_AW1:
	push	{r14}
	mov	r0,UnlockBoolean_Custom_VersusAW1
	b	@Option_Check
AvailCheck_VersusCO_AW2:
	push	{r14}
	mov	r0,UnlockBoolean_Custom_VersusAW2
	b	@Option_Check
AvailCheck_VersusCO_AW3:	
	push	{r14}
	mov	r0,UnlockBoolean_Custom_VersusAW3
	b	@Option_Check
AvailCheck_VersusCO_CCO:	
	push	{r14}
	mov	r0,UnlockBoolean_Custom_VersusCCO
	b	@Option_Check
AvailCheck_VersusCO_SFW:	
	push	{r14}
	mov	r0,UnlockBoolean_Custom_VersusSFW
	b	@Option_Check	
@Option_Check:	
	bl	Long_GlobalBitCheck;0x0803CBD8
	cmp	r0,0x0
	bne	@Option_On
	b	@Option_Off
@Option_Off:	
	mov	r0,1
	b	@End2
@Option_On:
	mov	r0,0
@End2:	
	pop	{r1}
	bx	r1
	.pool

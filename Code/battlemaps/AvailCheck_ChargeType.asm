;AvailCheck_Turntimer.asm
;Checks whether the Turn Timer Bit is Off
;Returns 0 if Off
;Returns 1 if On

AvailCheck_ChargeType_IsOff:
	push	{r14}
	mov	r0,UnlockBoolean_Custom_Charging
	bl	Long_GlobalBitCheck;0x0803CBD8
	cmp	r0,0x0
	beq	@@Option_Off
	mov	r0,1
	neg	r0,r0
	b	@@End
@@Option_Off:
	mov	r0,1
@@End:	
	pop	{r1}
	bx	r1
	.pool

AvailCheck_ChargeType_IsOn:
	push	{r14}
	mov	r0,UnlockBoolean_Custom_Charging
	bl	Long_GlobalBitCheck;0x0803CBD8
	cmp	r0,0x0
	bne	@@Option_On
	
	mov	r0,UnlockBoolean_Custom_ChargingAW1
	bl	Long_GlobalBitCheck;0x0803CBD8
	cmp	r0,0x0
	bne	@@Option_On
	
	mov	r0,UnlockBoolean_Custom_ChargingAW3
	bl	Long_GlobalBitCheck;0x0803CBD8
	cmp	r0,0x0
	bne	@@Option_On
	
	mov	r0,0
	b	@@End
	
@@Option_On:
	mov	r0,1
	b	@@End
@@End:	
	pop	{r1}
	bx	r1
	.pool
	
AvailCheck_ChargeTypeAW1_IsOff:
	push	{r14}
	mov	r0,UnlockBoolean_Custom_ChargingAW1
	bl	Long_GlobalBitCheck;0x0803CBD8
	cmp	r0,0x0
	beq	@@Option_Off
	mov	r0,1
	neg	r0,r0
	b	@@End
@@Option_Off:
	mov	r0,1
@@End:	
	pop	{r1}
	bx	r1
	.pool

AvailCheck_ChargeTypeAW3_IsOff:
	push	{r14}
	mov	r0,UnlockBoolean_Custom_ChargingAW3
	bl	Long_GlobalBitCheck;0x0803CBD8
	cmp	r0,0x0
	beq	@@Option_Off
	mov	r0,1
	neg	r0,r0
	b	@@End
@@Option_Off:
	mov	r0,1
@@End:	
	pop	{r1}
	bx	r1
	.pool


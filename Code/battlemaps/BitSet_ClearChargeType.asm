;BitSet_ClearVersusCOBits.asm
;Clears all the bits pertaining to Versus selections

BitSet_ClearAllChargeTypeBits:
	push	{r14}
	mov	r0,0
	
	;Set up all the bits you're clearing in the bitmask
	mov	r1,1
	mov	r2,UnlockBoolean_Custom_Charging
	sub	r2,0x20
	lsl	r1,r2
	orr	r0,r1
	
	mov	r1,1
	mov	r2,UnlockBoolean_Custom_ChargingAW1
	sub	r2,0x20
	lsl	r1,r2
	orr	r0,r1
	
	mov	r1,1
	mov	r2,UnlockBoolean_Custom_ChargingAW3
	sub	r2,0x20
	lsl	r1,r2
	orr	r0,r1
	
	ldr	r2,=CurrentUnlockedStatus
	ldr	r1,[r2]
	bic	r1,r0
	str	r1,[r2]
	
	pop	{r1}
	bx	r1
	.pool
	
BitSet_ClearOtherChargeTypeBits:
	push	{r4,r14}
	mov	r4,r0
	mov	r0,0
	
	;Set up all the bits you're clearing in the bitmask
	mov	r1,1
	mov	r2,UnlockBoolean_Custom_Charging
	sub	r2,0x20
	lsl	r1,r2
	orr	r0,r1
	
	mov	r1,1
	mov	r2,UnlockBoolean_Custom_ChargingAW1
	sub	r2,0x20
	lsl	r1,r2
	orr	r0,r1
	
	mov	r1,1
	mov	r2,UnlockBoolean_Custom_ChargingAW3
	sub	r2,0x20
	lsl	r1,r2
	orr	r0,r1
	
	ldr	r2,=CurrentUnlockedStatus
	ldr	r1,[r2]
	bic	r1,r0
	str	r1,[r2]
	
	mov	r0,r4
	sub	r0,0x20
	mov	r1,1
	lsl	r1,r0
	ldr	r0,[r2]
	orr	r0,r1
	str	r0,[r2]
	
	pop	{r4}
	pop	{r1}
	bx	r1
	.pool

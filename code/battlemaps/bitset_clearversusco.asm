;BitSet_ClearVersusCOBits.asm
;Clears all the bits pertaining to Versus selections

BitSet_ClearVersusCOBits:
	push	{r14}
	mov	r0,0
	
	;Set up all the bits you're clearing in the bitmask
	mov	r1,1
	mov	r2,UnlockBoolean_Custom_VersusAW1
	sub	r2,0x20
	lsl	r1,r2
	orr	r0,r1
	
	mov	r1,1
	mov	r2,UnlockBoolean_Custom_VersusAW2
	sub	r2,0x20
	lsl	r1,r2
	orr	r0,r1
	
	mov	r1,1
	mov	r2,UnlockBoolean_Custom_VersusAW3
	sub	r2,0x20
	lsl	r1,r2
	orr	r0,r1
	
	mov	r1,1
	mov	r2,UnlockBoolean_Custom_VersusCCO
	sub	r2,0x20
	lsl	r1,r2
	orr	r0,r1
	
	mov	r1,1
	mov	r2,UnlockBoolean_Custom_VersusSFW
	sub	r2,0x20
	lsl	r1,r2
	orr	r0,r1
	
	ldr	r2,=CurrentUnlockedStatus
	ldr	r1,[r2]
	bic	r1,r0
	str	r0,[r2]
	
	pop	{r1}
	bx	r1
	.pool
	
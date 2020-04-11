;core_gastrick.asm
;Code that eliminates the Gas Trick bug
;Forces pathing to only move one direction per frame.

Core_Gastrick:
	cmp	r0,0x0
	bne	@End
	
	mov	r0,r9
	ldr	r6,[r0]
	ldrh	r1,[r6,0x2]
	mov	r2,r8
	ldr	r0,[r2]
	add	r0,0x2
	add	r3,r7,r0
	
	ldr	r4,=0x080237C8+1
	bx	r4
	
@End:
	pop	{r3-r5}
	mov	r8,r3
	mov	r9,r4
	mov	r10,r5
	pop	{r4-r7}
	pop	{r0}
	bx	r0
.pool

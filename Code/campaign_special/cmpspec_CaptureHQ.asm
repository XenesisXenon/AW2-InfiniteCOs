;cmpspec_CaptureHQ.asm
;Supposed to trigger when capturing a HQ!
;The implementation is bugged and it uses the initial units' position
;rather than the unit's target position
;This does not work correctly in the shipped game!

.org 0x0804599C
CmpSpec_CaptureHQ:
	push	{r4,r14}
	ldr	r0,=0x08499590
	ldr	r2,[r0]
	ldr	r0,=0x030040D8
	ldr	r3,[r0]
	ldrb	r1,[r3,0x3]
	lsl	r1,r1,0x1
	ldr	r4,=0x417A
	add	r0,r2,r4
	add	r0,r0,r1
	ldrh	r0,[r0]
	ldrb	r1,[r3,0x2]
	add	r0,r0,r1
	ldr	r1,=0x1432
	add	r2,r2,r1
	add	r2,r2,r0
	ldrb	r1,[r2]
	mov	r0,0x1F
	and	r0,r1
	cmp	r0,0x8
	beq	@CmpSpec_CaptureHQ_True
	mov	r0,0x0
	b	@CmpSpec_CaptureHQ_End
	.pool
@CmpSpec_CaptureHQ_True:	
	mov	r0,0x1
@CmpSpec_CaptureHQ_End:	
	pop	{r4}
	pop	{r1}
	bx	r1
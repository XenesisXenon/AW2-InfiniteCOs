;hookcopypower.asm
;Disables the Copy Power effect after a COP.

.org 0x08044178
	push {r4,r14}
	ldr	r4,=0x08499598
	ldr	r3,[r4]
	lsl	r1,r0,0x4
	sub	r1,r1,r0
	lsl	r1,r1,0x2
	add	r3,r1,r3
	ldr	r2,=EndTurnDisableCopy+1
	bx	r2
;	mov	r2,0x0
;	strb	r2,[r3,0x1E]
;	ldr	r0,[r4]
;	add	r1,r1,r0
;	strh	r2,[r1,0x26]
;	strh	r2,[r1,0x28]

;	pop	{r4}
;	pop	{r0}
;	bx	r0
	.pool


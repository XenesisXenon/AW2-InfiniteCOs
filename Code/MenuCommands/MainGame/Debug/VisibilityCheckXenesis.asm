;VisibilityCheckXenesis.asm

VisibilityCheckXenesis:	;What is this I don't even
	mov	r1,UnlockBoolean_Custom_Debug
	sub	r1,0x20
	mov	r0,1
	lsl	r0,r1
	ldr	r1,=CurrentUnlockedStatus
	ldr	r1,[r1]
	and	r1,r0
	cmp	r1,0x0
	beq	@VisibilityCheckXenesis_False
	mov	r0,0
	b	@VisibilityCheckXenesis_End

@VisibilityCheckXenesis_False:
	mov	r0,0x1
@VisibilityCheckXenesis_End:
	bx	r14
	.pool
;Blank Line	

;cmp_prologue.asm
;This code runs the prologue events, etc.

.org 0x0808A844
	push	{r4,r14}
	mov	r4,r0
	ldr	r0,=0x03002EE0
	ldr	r0,[r0]
	ldrh	r1,[r0,0x4]
	mov	r0,0x1
	and	r0,r0
	cmp	r0,0x0
	beq	@Cmp_Prologue_End
	bl	0x08013C00
	bl	0x08013AEC
	mov	r0,r4
	bl	0x08014BC0
	ldr	r0,=Event_Prologue;0x084A0D58 This is the Event pointer for the Prologue
	bl	0x080193B0
	mov	r0,0x0
	bl	0x0801A5B0
	mov	r0,r4
	bl	0x0801CB20
@Cmp_Prologue_End:	
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool

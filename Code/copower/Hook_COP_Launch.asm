;Hook_COP_Launch.asm
;This code launches the COP field effects
;Input: r0 = Player Number, r1 = COP State
.org 0x08044B28

	push	{r4,r5,r14}
	ldr	r5,=Core_COPLaunch_FieldAnimation+1
	bx	r5
	.pool
	;ldr	r5,=0x08499598
	;ldr	r4,[r5]
	;lsl	r3,r0,0x4
	;sub	r3,r3,r0
	;lsl	r3,r3,0x2
	;add	r4,r3,r4
	;strb	r1,[r4,0x1F]
COPLaunch_FieldAnimation_Return:
	ldr	r4,=COStatsAbilitiesDatatable;0x085D3DD0
	ldr	r0,[r5]
	add	r3,r3,r0
	ldrb	r0,[r3,0x1F]
	lsl	r1,r0,0x4
	add	r1,r1,r0
	ldrb	r3,[r3,0x1D]
	lsl	r0,r3,0x6
	add	r0,r0,r3
	add	r0,r0,r1
	lsl	r0,r0,0x2
	add	r4,0x3C
	add	r0,r0,r4
	ldr	r1,[r0]
	mov	r0,r2
	bl	0x0808BBC0
	ldr	r3,=COGraphicsPowerEffectsTable;0x084A0090
	ldr	r0,=0x030033EC
	ldrh	r1,[r0]
	ldr	r2,[r5]
	lsl	r0,r1,0x4
	sub	r0,r0,r1
	lsl	r0,r0,0x2
	add	r0,r0,r2
	ldrb	r1,[r0,0x1F]
	sub	r1,0x1
	lsl	r2,r1,0x2
	add	r2,r2,r1
	ldrb	r1,[r0,0x1D]
	lsl	r0,r1,0x4
	add	r0,r0,r1
	add	r0,r0,r2
	lsl	r0,r0,0x2
	add	r3,0x28
	add	r0,r0,r3
	ldr	r1,[r0]
	mov	r0,0x0
	bl	0x0808BBC0
	pop	{r4-r5}
	pop	{r0}
	bx	r0
	.pool

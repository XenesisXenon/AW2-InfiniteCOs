;hook_starcost.asm
;Modifies the CO Power stars costing subroutine to have
;Per-game COP costs

.org 0x0804419C
	push	{r4-r5,r14}
	mov	r4,r0
	bl	0x08044374	;Gathers COP Uses
	cmp	r0,9
	ble	@Starcost_DynamicUses
	mov	r1,200
	b	@Starcost_Maxuses
@Starcost_DynamicUses:
	mov	r0,r4
	bl	0x08044374	;Gathers COP Uses
	lsl	r1,r0,0x2
	add	r1,r1,r0
	lsl	r1,r1,0x12
	mov	r0,200
	lsl	r0,r0,0xF
	add	r1,r1,r0
	lsr	r1,r1,0x10
@Starcost_Maxuses:
	ldr	r0,=Core_COPowerStarCost_Versioned+1
	bx	r0

;	ldr	r0,=9000
;	mul	r0,r1
;	mov	r1,100
;	bl	0x0808AAAC	;Division Function
;	pop	{r4}
;	pop	{r1}
;	bx	r1
	.pool

;copeffectresupplyunit.asm
;Fills the Unit's Fuel and Ammo

.org 0x08044518
COPEffectResupplyUnit:
	push	{r4,r14}
	mov	r4,r0
	mov	r1,0x0
	bl	0x08029978
	mov	r0,r4
	mov	r1,0x0
	bl	0x08029A48
	pop	{r4}
	pop	{r0}
	bx	r0
;Blank Line	

;TargetHighestHP.asm
;Uses the highest HP as the unit's attribute to add.

MeteorTargetHighestHP:
	push	{r1}
	ldrb	r0,[r4,#0x4]
	lsl	r0,r0,#0x19
	lsr	r0,r0,#0x19
	ldr	r1,=CustomMeteorBuffer;0x0201FD84
	ldrb	r1,[r1,0x4]
	cmp	r0,r1
	blt	MeteorTargetHighestHPEnd
	mov	r0,r1	
MeteorTargetHighestHPEnd:
	pop	{r1}
	bx	r14
	
;Blank Line	

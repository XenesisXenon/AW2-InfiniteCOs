;copeffectreanimateunit.asm
;Reanimates the unit (Unsets Wait Mode)


COPEffectStealthUnit:
	ldrb	r2,[r0,0x1]
	mov	r1,0x20
	orr	r1,r2
	strb	r1,[r0,0x1]
	bx	r14
;Blank Line	

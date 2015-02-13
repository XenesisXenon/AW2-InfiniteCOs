;copeffectreanimateunit.asm
;Reanimates the unit (Unsets Wait Mode)

.org 0x0804450C
COPEffectReanimateUnit:
	ldrb	r2,[r0,0x1]
	mov	r1,0xFE
	and	r1,r2
	strb	r1,[r0,0x1]
	bx	r14
;Blank Line	

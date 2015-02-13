;copeffectactivatelaunch.asm
;Refreshes all untis in transports to being capable of being Launched

COPEffectActivateLaunch:
	ldrb	r1,[r0,0x1]
	mov	r2,0x8
	and	r2,r1
	cmp	r2,0x0
	beq	COPEffectActivateLaunchEnd
	mov	r2,0xFE
	and	r2,r1
	strb	r2,[r0,0x1]
COPEffectActivateLaunchEnd:	
	bx	r14

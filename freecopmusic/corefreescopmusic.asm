;corefreescopmusic.asm
;For the klaxxons
CoreFreeSCOPMusic:

	mov	r1,0x82
	lsl	r1,r1,0x1
	mul	r0,r1
	ldr	r1,=COStatsAbilitiesDatatable
	add	r0,r0,r1
	mov	r1,21
	ldrb	r0,[r0,r1]
	cmp	r0,0x5
	beq	CoreFreeSCOPMusicIsBlackHole
	mov	r0,0
	b	CoreFreeSCOPMusicEnd
CoreFreeSCOPMusicIsBlackHole:	
	mov	r0,1
CoreFreeSCOPMusicEnd:
	bx	r14
	.pool
;Blank Line

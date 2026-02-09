;corepalettefix.asm

CorePaletteFix:
	cmp	r0,0x12
	bgt	CorePaletteFixOutrealm
	ldr	r1,=0x0200C420
	add	r1,0x20
	add	r0,r0,r1
	ldrb	r0,[r0]
	bx	r14
CorePaletteFixOutrealm:
	mov	r0,0x0
	bx	r14
	.pool
;Blank Line	

;CoreSmallMugFix.asm

CoreSmallMugFix:
	cmp	r0,0x12
	bgt	CustomMugTable
	lsl	r0,r0,0x3
	ldr	r1,=0x03FF
	and	r0,r1
	lsl	r0,r0,0x5
	ldr	r1,=0x08102F64
	add	r0,r0,r1
	b	CoreSmallMugFixEnd

CustomMugTable:	
	sub	r0,0x13
	lsl	r0,r0,0x3
	ldr	r1,=0x03FF
	and	r0,r1
	lsl	r0,r0,0x5
	ldr	r1,=GraphicsOutrealmMugSmall
	add	r0,r0,r1	
	
CoreSmallMugFixEnd:	
	ldr	r1,=0x06010740
	ldr	r2,=0x080437B0+1
	bx	r2
	.pool
	


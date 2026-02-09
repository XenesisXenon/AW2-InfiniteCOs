;hookunitzones.asm
;Grants units the ability to boost stats based on a zone



;Forces full redraw on scrolling instead of partial redraw
.org 0x08023D2E
	add	r0,r5,1
	lsl	r0,r0,0x10
	lsr	r5,r0,0x10
	cmp	r5,0xF
	bls	0x08023D20
	
	ldr	r5,=0x080227AA+1
	bx	r5
	.pool
BG2BlankTestExtraSpace:
	ldr	r5,=BG2BlankTest+1
	bx	r5
	.pool
	
.org 0x08023D62
	add	r0,r5,1
	lsl	r0,r0,0x10
	lsr	r5,r0,0x10
	cmp	r5,10
	bls	0x08023D54
	ldr	r5,=0x080227AA+1
	bx	r5
	.pool

.org 0x080227AA
	bl	BG2BlankTestExtraSpace

;Removes the Old Screen Blanking Code
.org 0x080225FA
	nop
	nop
	
.org 0x08022602
	nop
	
.org 0x08022606
	nop
	
;Blank Line	

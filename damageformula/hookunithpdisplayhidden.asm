;hookunithpdisplayhidden.asm
;Allows for Hide All HP on units

;Code to Make the Unit's HP Hidden Type:
;	mov	r1,r7
;	add	r1,0x42
;	mov	r0,r5
;	add	r0,0x7A	(r0 = 0xC2AF)
;	b	0x08022388

.org 0x08022388
	push	{r0}
	ldr	r0,=CoreUnitHPDisplayHidden+1
	bx	r0
	.pool
	

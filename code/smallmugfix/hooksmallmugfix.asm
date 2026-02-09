;hooksmallmugfix.asm
;Causes the small mugshots to load from a pointer-offset location

.org 0x080437A2
	ldr	r1,=CoreSmallMugFix+1
	bx	r1
	.pool

;Blank Line

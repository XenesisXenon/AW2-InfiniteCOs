;hookunitlist.asm
;Function to allow for CO Specific Units, some QOL improvement to the script, etc.

.org 0x0801973C
	ldr	r0,=UnitListLoaderCOSpecificUnits+1
	bx	r0
	.pool


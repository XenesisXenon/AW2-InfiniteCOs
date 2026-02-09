;hookpalettefix.asm
;Fixes it so only COs <0x12 can have multiple palettes

.org 0x08017860
	ldr	r1,=CorePaletteFix+1
	bx	r1
	.pool


;Blank Line

;hookcaptureexpansion.asm
;Enables the Flat Capture Function
;Enables force Ranks
.org 0x0804269A
	ldr	r1,=CaptureExpansionFunction+1
	bx	r1
	.pool

;Alters which Terrains can be captured
.org 0x080423B8
	cmp	r0,0x16 - 0x6
.org 0x080423D8	;Original Jump table at 0x080423DC
	.dw	Table_CaptureTerrain_Jump
	
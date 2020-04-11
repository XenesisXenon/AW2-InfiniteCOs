;hookinfoboxhpdisplayadjust.asm
;Adjusts the HP infobox display to add support for 100-HP display.
;Adds support for Hidden All HP, as well

.org 0x0802AE48
	ldr	r0,=InfoboxHPDisplayAdjustment+1
	bx	r0
	.pool
	

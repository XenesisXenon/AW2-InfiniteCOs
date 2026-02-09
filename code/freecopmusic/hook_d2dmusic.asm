;hook_d2dmusic.asm
;Adds an easter egg :)

.org 0x08043D98
	ldr	r0,=Core_D2DMusic+1
	bx	r0
	.pool
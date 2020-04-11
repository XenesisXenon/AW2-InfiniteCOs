;hook_gastrick.asm
;Code that eliminates the Gas Trick bug
;Forces pathing to only move one direction per frame.

;.org 0x080237BA
;	ldr	r1,=Core_GasTrick+1
;	bx	r1
;	.pool
	
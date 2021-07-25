;hook_movecostexpansion.asm

;Common Routine used by Movement Highlight/AI Pathing
.org 0x0801F91E
	ldr	r0,=Core_MoveCostExpansion+1
	bx	r0
	.pool

;Player Movement Pathing Functions
;Calculates delta moving over tile
.org 0x08038922
	ldr	r0,=Core_MoveCostExpansion_Two+1
	bx	r0
	.pool

.org 0x08038EA0
	ldr	r0,=Core_MoveCostExpansion_Three+1
	bx	r0
	.pool
	
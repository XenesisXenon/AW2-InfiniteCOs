;hook_pathfinding.asm
;custom addition for allowing terrain to be moved over but denied

;.org 0x0801F760
	;ldr	r0,=Core_Pathfinding+1
	;bx	r0
	;.pool

;.org 0x0801F7FA
	;ldr	r1,=Core_PathfindingTwo+1
	;bx	r1
	;.pool

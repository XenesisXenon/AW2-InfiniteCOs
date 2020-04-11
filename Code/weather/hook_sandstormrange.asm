;hook_sandstormrange.asm
;Hook to allow for Weather related range reductions
;Hooks into the Unit/CO range setup

.org 0x08042D74
	ldr	r1,=Core_SandstormRange+1
	bx	r1
	.pool
	


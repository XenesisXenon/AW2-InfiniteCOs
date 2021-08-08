;hook_attackorderexpansion.asm
;Allows more ways to modify enabling pre-emptive counterattacks (e.g. Counterbreak)

.org 0x08024FCE
	ldr	r0,=Core_AttackOrderExpansion+1
	bx	r0
	.pool
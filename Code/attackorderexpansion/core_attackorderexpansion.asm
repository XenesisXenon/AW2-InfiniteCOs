;core_attackorderexpansion.asm

Core_AttackOrderExpansion:
	ldr	r0,[r7]	;Checks for MistWalker Skill
	Calculate_PlayerFromUnitPointer
	add	r1,r0,1
	ldr	r2,=BasePlayerMemory-0x3C
	mov	r0,PlayerMemory_Length
	mul	r0,r1
	add	r0,r0,r2
	add	r0,CurrentPlayerPowerState
	ldrb	r0,[r0]
	cmp	r0,COMode_Super
	bne	@Mistwalker_False
	ForceRankCheckerTurnInput ForceRank_Mistwalker,0x1
	
	cmp	r0,0
	bne	@Mistwalker_True
	b	@Mistwalker_False
@Mistwalker_True:
	mov	r0,0x4
	mov	r1,0x4
	ldr	r2,=0x08499594
	ldr	r1,=0x08024FF8+1
	bx	r1

@Mistwalker_False:
	;Original Code
	ldr	r1,[r7]
	ldr	r2,=0x08499594
	ldr	r0,[r2]
	sub	r1,r1,r0
	lsl	r0,r1,0x2
	add	r0,r0,r1
	ldr	r1,=0x08024FDA+1
	bx	r1
	.pool
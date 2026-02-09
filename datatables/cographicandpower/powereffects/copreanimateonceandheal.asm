;copeffectreanimateonceandheal.asm
;Re-animates units on first use
;Heals 1 HP and resupplies all units


COPEffectReanimateOnceAndHeal:
	push	{r4,r14}
	mov	r1,1	;Heal Amount
	mov	r2,0x0
	bl	@LongBL_HPHealingFunction;0x08029AF8
	ldr	r0,[sp,0x0]
	mov	r4,r0
	mov	r1,0x0
	bl	@LongBL_RefuelFunction;0x08029978
	mov	r0,r4
	mov	r1,0x0
	bl	@LongBL_ResupplyFunction;0x08029A48
	
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	sub	r0,0x1
	mov	r1,PlayerMemory_Length
	mul	r0,r1
	ldr	r1,=BasePlayerMemory
	add	r0,r0,r1
	mov	r1,CurrentPlayerPowerUses
	ldrb	r0,[r0,r1]
	cmp	r0,0x1	;Maximum Uses
	bgt	@End
	
	mov	r0,r4	
	ldrb	r2,[r0,0x1]
	mov	r1,0x8	;Checks for Transported units
	and	r1,r2
	cmp	r1,0x0	;Number of uses
	bne	@End
	
	mov	r1,0xFE	;Re-animates units
	and	r1,r2
	strb	r1,[r0,0x1]
	
@End:
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool
	
@LongBL_HPHealingFunction:
	LongBL r3,0x08029AF9
	
@LongBL_RefuelFunction:
	LongBL r3,0x08029979
	
@LongBL_ResupplyFunction:
	LongBL r3,0x08029A49

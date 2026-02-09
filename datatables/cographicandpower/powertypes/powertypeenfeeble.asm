;powertypeenfeeble.asm

COPowerTypeEnfeeble:
	@FirepowerMultiplier equ 30
	@DefenceMultiplier equ 30

	push    {r4-r7,r14}	;Get current player's team
	ldr     r4,=CurrentPlayerTurn
	ldrh    r1,[r4]
	ldr     r5,=BaseUnitPointer
	ldr     r2,[r5]
	lsl     r0,r1,0x4
	sub     r0,r0,r1
	lsl     r0,r0,0x2
	add     r0,r0,r2
	mov	r1,0xA
	strh	r1,[r0,0x28]	;Stores the CO's defence bonus for power
	mov	r1,CurrentPlayerPowerUses
	ldrb	r1,[r0,r1]	;Loads COP Uses
	cmp	r1,1
	bgt	@Not_FirstUse
	mov	r7,2
	b	@Multiplier_Done
@Not_FirstUse:
	mov	r7,1
	
@Multiplier_Done:
	mov	r1,CurrentPlayerTeam
	ldrb    r0,[r0,r1]	;Player's team in r0
	
	mov	r1, 1		;Loop count in r1
@Loop_Start:	
	ldrh	r2,[r4]
	cmp	r1,r2
	beq	@Loop_End
	
	lsl     r2,r1,0x4
	sub     r2,r2,r1
	lsl     r2,r2,0x2
	ldr	r3,[r5]
	add     r2,r2,r3
	mov	r3,CurrentPlayerTeam
	ldrb    r3,[r2,r3]	;Other's team in r3
	
	cmp	r0,r3
	beq	@Loop_end
	
	mov	r3,@FirepowerMultiplier
	mul	r3,r7
	ldrh	r6,[r2,0x26]
	sub	r6,r6,r3
	strh	r6,[r2,0x26]
	
	mov	r3,@DefenceMultiplier
	mul	r3,r7
	ldrh	r6,[r2,0x28]
	sub	r6,r6,r3
	strh	r6,[r2,0x28]
	
@Loop_End:
	add	r1,1
	cmp	r1,4
	blt	@Loop_Start
	
	pop     {r4-r7}
	pop     {r0}
	bx      r0
	.pool
;Blank Line	

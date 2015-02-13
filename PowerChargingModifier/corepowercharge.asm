;corepowercharge.asm
;Blah
PowerChargeAddition:
	;sp +0x4 = Player ID for Attacker, sp = Defender
PowerChargeAdditionAttacker:	
	ldr	r0,[sp,0x4]
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r0,r0,r1
	ldrb	r1,[r0,0x1E]
	ldrb	r0,[r0,0x1D]
	mov	r2,GatherDamageToFunds
	bl	GatherCOAbility
	cmp	r0,0x0
	beq	PowerChargeAdditionDefender
	
	;Unit Price of Target
	mov	r5,r0
	ldr	r0,=0x030013B0
	ldr	r0,[r0]
	ldrb	r1,[r0]
	ldr	r0,[sp,0x8]
	
	bl	LongBLGatherUnitPrice
	mov	r4,r0

	;Load Initial HP of Target
	ldr	r1,=0x030013B0
	ldr	r1,[r1]
	ldrb	r0,[r1,0x4]
	mov	r2,0x7F
	and	r0,r2
;	mov	r1,10
;	sub	r0,1
;	bl	DivisionFunction
;	add	r0,1	
	
	mov	r6,r0
	
	;Load Health Remaining
	ldr	r1,=0x030013B0
	mov	r2,0x8
	ldsh	r0,[r1,r2]
	cmp	r0,0x0
	beq	PowerChargeAdditionDefender
;	mov	r1,10
;	sub	r0,1
;	bl	DivisionFunction
;	add	r0,1	
	
	;Calculate Damage fun stuff	
	sub	r0,r6,r0
	cmp	r0,0
	bgt	PowerChargeAdditionAttackerTargetAlive
	mov	r0,0
	
PowerChargeAdditionAttackerTargetAlive:	
	mov	r1,10
	bl	DivisionFunction

	;Multiply By Unit Price
	mul	r0,r4
	
	;Multiply by CO Coefficient
	mul	r0,r5
	mov	r1,100
	bl	DivisionFunction
	mov	r1,r0
	ldr	r0,[sp,0x4]
	bl	LongBLAddFundstoPlayer

PowerChargeAdditionDefender:
	ldr	r0,[sp,0x8]
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r0,r0,r1
	ldrb	r1,[r0,0x1E]
	ldrb	r0,[r0,0x1D]
	mov	r2,GatherDamageToFunds
	bl	GatherCOAbility
	cmp	r0,0x0
	beq	PowerChargeAdditionEnd
	
	;Unit Price of Target
	mov	r5,r0
	ldr	r0,=0x030013D0
	ldr	r0,[r0]
	ldrb	r1,[r0]
	ldr	r0,[sp,0x8]
	
	bl	LongBLGatherUnitPrice
	mov	r4,r0

	;Load Initial HP of Target
	ldr	r1,=0x030013D0
	ldr	r1,[r1]
	ldrb	r0,[r1,0x4]
	mov	r2,0x7F
	and	r0,r2
;	mov	r1,10
;	sub	r0,1
;	bl	DivisionFunction
;	add	r0,1	
	
	mov	r6,r0
	
	;Load Health Remaining
	ldr	r1,=0x030013D0
	mov	r2,0x8
	ldsh	r0,[r1,r2]
	cmp	r0,0x0
	beq	PowerChargeAdditionEnd
;	mov	r1,10
;	sub	r0,1
;	bl	DivisionFunction
;	add	r0,1	
	
	;Calculate Damage fun stuff	
	sub	r0,r6,r0
	cmp	r0,0
	bgt	PowerChargeAdditionDefenderTargetAlive
	mov	r0,0
	
PowerChargeAdditionDefenderTargetAlive:	
	mov	r1,10
	bl	DivisionFunction

	;Multiply By Unit Price
	mul	r0,r4
	;Multiply by CO Coefficient
	mul	r0,r5
	
	mov	r1,100
	bl	DivisionFunction
	mov	r1,r0
	ldr	r0,[sp,0x8]
	bl	LongBLAddFundstoPlayer
	
PowerChargeAdditionEnd:
	add     sp,#0xC
	pop     {r3-r5}
	mov     r8,r3
	mov     r9,r4
	mov     r10,r5
	pop     {r4-r7}
	pop     {r0}
	bx      r0
	.pool
;Blank Line

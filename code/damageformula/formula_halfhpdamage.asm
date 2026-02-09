;formula_halfhpdamage.asm
;code that will hook and generate an attack effect that does half HP damage.

Formula_HalfHPDamage:
	ldr	r0,=0x08499598
	ldr	r0,[r0]
	lsl	r1,r4,0x4
	sub	r1,r1,r4
	lsl	r1,r1,0x2
	add	r1,r1,r0
	ldrb	r0,[r1,0x1D]
	ldrb	r1,[r1,0x1E]
	mov	r2,Gather_CO_SpecialEffectsWord
	bl	Gather_COAbility_Word
	ldr	r1,=Special_CO_HPHalvingAttack
	and	r0,r1
	cmp	r0,0
	beq	@Return
	
	mov	r0,r8
	ldr	r0,[r0]
	ldrb	r0,[r0,0x4]
	mov	r1,0x7F
	and	r0,r1
	lsr	r0,r0,0x1
	str	r0,[sp,0xc]
	
@Return:
	ldr	r0,=0x08499598
	ldr	r0,[r0]
	lsl	r1,r4,0x4
	sub	r1,r1,r4
	lsl	r1,r1,0x2
	add	r1,r1,r0
	ldrb	r0,[r1,0x1D]
	ldrb	r1,[r1,0x1E]
	ldr	r2,=0x08024B3C+1
	bx	r2
	.pool
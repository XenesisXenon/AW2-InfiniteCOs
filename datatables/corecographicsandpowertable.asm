;corecographicsandpowertable.asm
;Adds support for Daily COPs.

COGraphicsAndPowerTableGeneralCOP:
	ldrh	r1,[r0]
	ldr	r2,[r5]
	lsl	r0,r1,0x4
	sub	r0,r0,r1
	lsl	r0,r0,0x2
	add	r0,r0,r2
	ldrb	r1,[r0,0x1F]
	sub	r1,0x1
	cmp	r1,0x0
	blt	COGraphicsAndPowerTableGeneralCOPUseCustomTable
	ldr	r2,=0x08044B6E+1
	bx	r2
	
COGraphicsAndPowerTableGeneralCOPUseCustomTable:
	ldrb	r1,[r0,0x1D]
	ldr	r0,=CoreDailyPowerTable
	lsl	r1,r1,0x2
	add	r0,r0,r1
	ldr	r0,[r0]
	add	r0,12
	ldr	r1,[r0]
	cmp	r1,0x0
	beq	COGraphicsAndPowerTableGeneralCOPUseCustomTableNullPointer

	ldr	r0,=0x08044B82+1
	bx	r0
	
COGraphicsAndPowerTableGeneralCOPUseCustomTableNullPointer:
	pop	{r4,r5}
	pop	{r0}
	bx	r0
	.pool

COGraphicsAndPowerTableUnitCheck:
	ldrh	r0,[r7]
	ldr	r1,=0x08499598
	mov	r8,r1
	ldr	r2,[r1]
	lsl	r1,r0,0x4
	sub	r1,r1,r0
	lsl	r1,r1,0x2
	add	r1,r1,r2
	ldrb	r0,[r1,0x1F]
	sub	r0,0x1
	cmp	r0,0x0
	blt	COGraphicsAndPowerTableUnitCheckUseCustomTable
	
	ldr	r2,=0x08044690+1
	bx	r2
	
COGraphicsAndPowerTableUnitCheckUseCustomTable:
	ldrb	r1,[r1,0x1D]
	ldr	r0,=CoreDailyPowerTable
	lsl	r1,r1,0x2
	add	r0,r0,r1
	ldr	r0,[r0]
	add	r0,4
	ldr	r1,[r0]
	cmp	r1,0x0	
	beq	COGraphicsAndPowerTableUnitCheckNullPointer
	ldr	r0,=0x080446A6+1
	bx	r0
	
COGraphicsAndPowerTableUnitCheckNullPointer:
	ldr	r0,=0x080447B4+1
	bx	r0
	.pool
	
COGraphicsAndPowerTableUnitEffect:
	ldrh	r0,[r7]
	mov	r3,r8
	ldr	r2,[r3]
	lsl	r1,r0,0x4
	sub	r1,r1,r0
	lsl	r1,r1,0x2
	add	r1,r1,r2
	ldrb	r0,[r1,0x1F]
	sub	r0,0x1
	cmp	r0,0x0
	blt	COGraphicsAndPowerTableUnitEffectUseCustomTable
	ldr	r2,=0x08044764+1
	bx	r2
	
COGraphicsAndPowerTableUnitEffectUseCustomTable:	
	ldrb	r1,[r1,0x1D]
	ldr	r0,=CoreDailyPowerTable
	lsl	r1,r1,0x2
	add	r0,r0,r1
	ldr	r0,[r0]
	add	r0,8
	ldr	r1,[r0]
	cmp	r1,0x0	
	beq	COGraphicsAndPowerTableUnitEffectNullPointer
	ldr	r0,=0x0804477A+1
	bx	r0
	
COGraphicsAndPowerTableUnitEffectNullPointer:
	ldr	r3,=0x08044780+1
	bx	r3
	.pool
	
COGraphicsAndPowerTableUnitEffectB:
	ldrh	r0,[r7]
	mov	r1,r8
	ldr	r2,[r1]
	lsl	r1,r0,0x4
	sub	r1,r1,r0
	lsl	r1,r1,0x2
	add	r1,r1,r2
	ldrb	r0,[r1,0x1F]
	sub	r0,0x1
	cmp	r0,0x0	
	blt	COGraphicsAndPowerTableUnitEffectUseCustomTableB
	ldr	r2,=0x080446F4+1
	bx	r2
	
COGraphicsAndPowerTableUnitEffectUseCustomTableB:	
	ldrb	r1,[r1,0x1D]
	ldr	r0,=CoreDailyPowerTable
	lsl	r1,r1,0x2
	add	r0,r0,r1
	ldr	r0,[r0]
	add	r0,8
	ldr	r1,[r0]
	cmp	r1,0x0	
	beq	COGraphicsAndPowerTableUnitEffectNullPointerB
	ldr	r0,=0x0804470A+1
	bx	r0

COGraphicsAndPowerTableUnitEffectNullPointerB:
	ldr	r0,=0x080447A6+1
	bx	r0
	
COGraphicsAndPowerTableGraphicIDA:
	ldrh	r4,[r0]
	ldr	r0,=0x08499598
	ldr	r1,[r0]
	lsl	r0,r4,0x4
	sub	r0,r0,r4
	lsl	r0,r0,0x2
	add	r0,r0,r1
	ldrb	r1,[r0,0x1F]
	sub	r1,0x1
	cmp	r1,0x0
	blt	COGraphicsAndPowerTableGraphicIDAUseCustomTableA
	
	ldr	r2,=0x080445C8+1
	bx	r2
	
COGraphicsAndPowerTableGraphicIDAUseCustomTableA:
	ldrb	r1,[r0,0x1D]
	ldr	r0,=CoreDailyPowerTable
	lsl	r1,r1,0x2
	add	r0,r0,r1
	ldr	r0,[r0]
	add	r0,0
	ldr	r0,[r0]
	ldr	r1,=0x080445DA+1
	bx	r1
	.pool

COGraphicsAndPowerTableGraphicIDB:	
	ldr	r1,=0x08499598
	ldr	r2,[r1]
	lsl	r1,r0,0x4
	sub	r1,r1,r0
	lsl	r1,r1,0x2
	add	r1,r1,r2
	ldrb	r3,[r1,0x1D]
	ldrb	r0,[r1,0x1F]
	ldr	r4,=COGraphicsPowerEffectsTable
	sub	r0,0x1
	cmp	r0,0x0
	blt	COGraphicsAndPowerTableGraphicIDAUseCustomTableB
	ldr	r2,=0x08044ACE+1
	bx	r2
	
COGraphicsAndPowerTableGraphicIDAUseCustomTableB:
	ldr	r0,=CoreDailyPowerTable
	lsl	r1,r3,0x2
	add	r0,r0,r1
	ldr	r1,[r0]
	ldrb	r0,[r1]
	ldrb	r4,[r1,0x1]
	
	ldr	r1,=0x08044AE0+1
	bx	r1
	.pool

;Blank Line

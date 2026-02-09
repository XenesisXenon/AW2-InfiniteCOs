;hookonerangeindirect.asm
;Provides the modification that Indirect On/Off selects indirect ability rather
;than min range = 1

;Player Interaction
.org 0x0802CAB6
	ldr	r2,[r3]
	ldr	r0,[r4]
	ldr	r0,[r0]
	ldrb	r1,[r0]
	mov	r0, 0x5C
	mul	r0,r1
	add	r0,r0,r2
	ldrb	r0,[r0,0x11]
	cmp	r0, 0x1
	
;.org 0x0802CB30
;	ldrb	r3,[r0,0x11]
	

.org 0x0805C888
	ldrb	r0,[r0,0x11]

.org 0x08024B5A
	ldrb	r0,[r1,0x11]

.org 0x080432E0
	ldr	r2,=0x085D5ABC
	mov	r1,0x5C
	mul	r0,r1
	add	r0,r0,r2
	ldrb	r1,[r0,0x11]
	cmp	r1,0x1
	bne	@OneRangeIndirectCheckNotDirect	
	mov	r0,0x5
	b	@OneRangeIndirectCheckEnd
@OneRangeIndirectCheckNotDirect:
	ldrb	r1,[r0,0xE]
	cmp	r1,0x0
	beq	@OneRangeIndirectCheckNotIndirect	
	mov	r0,0x6
	b	@OneRangeIndirectCheckEnd
@OneRangeIndirectCheckNotIndirect:
	mov	r0,0x7
@OneRangeIndirectCheckEnd:
	bx	r14	
	.pool	
	
.org 0x08062984
	ldrb	r0,[r0,0x11]

;Fixing Range Drawing	
.org 0x08041FEE
	ldrb	r0,[r0,0x11]
	cmp	r0,0x1
	beq	0x08042034
	mov	r0, 0x0
	b	0x08042036
	
.org 0x08042062
	cmp	r0, 0x0
	
;Blank Line

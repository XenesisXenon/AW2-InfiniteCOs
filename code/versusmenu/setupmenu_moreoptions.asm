;SetupMenu_MoreOptions.asm

;Procedure to transferring to Rules (from CO Select):
	ldr	r0,=0x02017C50
	add	r0,0x30
	strb	r4,[r0]
	ldr	r0,[r5]
	add	r0,0x26
	mov	r1,0x2
	strb	r1,[r0]
	ldr	r0,=0x08580AF0
	ldr	r1,=0x08065F79
	bl	0x08063A00
	bl	0x080654E8
	bl	0x08064A44
	.pool
	
;Procedure to transferring to Rules (from Alliance Select):
	bl	0x080654E8
	bl	0x08064A44
	ldr	r0,[r6]
	ldr	r0,[r0]
	add	r0,0x30
	strb	r4,[r0]
	
;Procedure to transfer to CO Select from Rules:
	ldr	r0,[r6]
	add	r0,0x31
	strb	r4,[r0]
	bl	0x080733B8
	mov	r0,0x2
	bl	0x08064B68
	ldr	r0,[r6]
	add	r0,0x30
	strb	r4,[r0]
	
	;Branch
	ldr	r1,[r6]
	ldrb	r0,[r1,0x8]
	cmp	r0,0x2
	beq
	
	;2p
	add	r1,0x26
	mov	r0,0
	strb	r0,[r1]
	bl	0806540C
	
	;3p+
	bl	0806530C
	ldr	r0,[r6]
	add	r0,0x26
	strb	r4,[r0]
	
	
;Procedure to begin game
	ldr	r0,=0x08580DD8
	bl	0x0806377C
	bl	0x0803BD54
	.pool
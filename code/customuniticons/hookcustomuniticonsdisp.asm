;hookveterancydisp.asm
;Code to Display Veterancy Icons

;Modifies the units that Have Vet Status to Display
.org 0x08022760
	ldr	r0,=VeterancyIconDisplay1+1
	bx	r0
	.pool
	
.org 0x08022776
	ldr	r3,=VeterancyIconDisplay2+1
	bx	r3
	.pool

;Modification of the Graphics Loader Code. Urk	
.org 0x0803678C
	push	{r4,r5,r14}
	ldr	r0,=#0x3004008
	ldr	r0,[r0]
	mov	r1,#0x32
	bl	#0x808BE1C
	mov	r1,r0
	cmp	r0,#0x14
	beq	VeterancyDisplay1;#0x8036804
	
	cmp	r0,#0x14
	bhi	VeterancyDisplay2;#0x80367AC
	
	cmp	r0,#0x0
	beq	VeterancyDisplay3;#0x80367B2
	
	b	VeterancyDisplay4;#0x8036868

VeterancyDisplay2:	
	cmp	r1,#0x28
	beq	VeterancyDisplay5;#0x8036828
	b	VeterancyDisplay4;#0x8036868
	
VeterancyDisplay3:
	ldr	r4,=#0x81251B0
	ldr	r5,=#0x30030B4
	ldr	r1,[r5]
	lsl	r1,r1,#0x1C
	lsr	r1,r1,#0x1E
	lsl	r1,r1,#0xE
	ldr	r0,=#0x60067A0
	add	r1,r1,r0
	mov	r0,r4
	mov	r2,#0x20
	bl	#0x8011C68
	add	r4,#0x20
	ldr	r1,[r5]
	lsl	r1,r1,#0x1C
	lsr	r1,r1,#0x1E
	lsl	r1,r1,#0xE
	ldr	r2,=#0x60067C0
	add	r1,r1,r2
	mov	r0,r4
	mov	r2,#0x20
	bl	#0x8011C68
	ldr	r1,=#VetGraphicsTransferFrame1+1
	bx	r1

	lsr	r1,r0,#0x11
	lsr	r0,r6,#0x1
	lsl	r0,r0,#0x0
	lsl	r0,r0,#0x0
	lsl	r0,r0,#0x0
	b	VeterancyDisplay6;#0x8036814

VeterancyDisplay1:	
	ldr	r0,=VetGraphicsTransferFrame2+1
	bx	r0

	lsr	r1,r0,#0x13
	lsr	r0,r6,#0x1
	lsr	r1,r1,#0x1E
	lsl	r1,r1,#0xE
	ldr	r2,=#0x60067E0
	add	r1,r1,r2
VeterancyDisplay6:	
	mov	r2,#0x20
	bl	#0x8011C68
	b	VeterancyDisplay4;#0x8036868
	
VeterancyDisplay5:	
	ldr	r5,=#0x8090EC4
	ldr	r4,=#0x30030B4
	ldr	r1,[r4]
	lsl	r1,r1,#0x1C
	lsr	r1,r1,#0x1E
	lsl	r1,r1,#0xE
	ldr	r0,=#0x60067A0
	add	r1,r1,r0
	mov	r0,r5
	mov	r2,#0x20
	bl	#0x8011C68
	ldr	r1,[r4]
	lsl	r1,r1,#0x1C
	lsr	r1,r1,#0x1E
	lsl	r1,r1,#0xE
	ldr	r2,=#0x60067C0
	add	r1,r1,r2
	mov	r0,r5
	mov	r2,#0x20
	bl	#0x8011C68
	ldr	r1,=VetGraphicsTransferFrame3+1;#0x8700C81
	bx	r1

	ldr	r0,=#0x60067E0
	add	r1,r1,r0
	mov	r0,r5
	mov	r2,#0x20
	bl	#0x8011C68
VeterancyDisplay4:	
	pop	{r4,r5}
	pop	{r0}
	bx	r0
	.pool	
;Blank Line

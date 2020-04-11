;Dossier Defence Display Page

Dossier_Firepower_Calculation:
	push	{r14}
	mov	r2,r1
	ldr	r1,=0x08499598
	ldr	r3,[r1]
	lsl	r1,r0,0x4
	sub	r1,r1,r0
	lsl	r1,r1,0x2
	add	r1,r1,r3
	ldrb	r0,[r1,0x1D]
	ldrb	r1,[r1,0x1E]
	bl	0x080430B0
	
	add	r0,0x1E
	cmp	r0,0x6E
	bls	0x08085430
	b	@Firepower_100;0x0808560C
	
	lsl	r0,r0,0x2
	ldr	r1,=@Jump_Table
	add	r0,r0,r1
	ldr	r0,[r0]
	mov	r15,r0
	
	.pool
@Jump_Table:	
	.dw	@Firepower_70	;70	;0x08085444
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100	;75
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_80	;80
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100	;85
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_90	;90
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100	;95
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100	;100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100	;105
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_110	;110
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_115	;115
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_120	;120
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100	;125
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_130	;130
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100	;135
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_140	;140
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100	;145
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_150	;150
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100	;155
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_160	;160
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100	;165
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_170	;170
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_100
	.dw	@Firepower_175	;175
	
@Firepower_90:		;0x08085600
	mov	r0,0x9B
	b	0x08085632	
@Firepower_80:		;0x08085604
	mov	r0,0x9C
	b	0x08085632	
@Firepower_70:		;0x08085608
	mov	r0,0x9D
	b	0x08085632	
@Firepower_100:		;0x0808560C
	mov	r0,0x9E
	b	0x08085632
@Firepower_110:		;0x08085610
	mov	r0,0x9F
	b	0x08085632
@Firepower_115:		;0x08085614
	mov	r0,0xA0
	b	0x08085632
@Firepower_120:		;0x08085618
	mov	r0,0xA1
	b	0x08085632
@Firepower_130:		;0x0808561C
	mov	r0,0xA2
	b	0x08085632
@Firepower_140:		;0x08085620
	mov	r0,0xA3
	b	0x08085632
@Firepower_150:		;0x08085624
	mov	r0,0xA4
	b	0x08085632
@Firepower_160:		;0x08085628
	mov	r0,0xA5
	b	0x08085632
@Firepower_170:		;0x0808562C
	mov	r0,0xA6
	b	0x08085632
@Firepower_175:		;0x08085630
	mov	r0,0xA7
	pop	{r1}
	bx	r1
	.dh	0
	
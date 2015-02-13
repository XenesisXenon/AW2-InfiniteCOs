;;Modifies the game input loop to draw zones

;Original
;Main Game Button Input Subroutine
.org 0x0802DCB4
	push	{r4,r5,r14}
	bl	#0x8023824
	bl	#0x802361C
	mov	r0,#0x4
	bl	#0x8023908
	mov	r0,#0x0
	bl	#0x8023274
	bl	#0x802DBF8
	lsl	r0,r0,#0x18
	cmp	r0,#0x0
	bne	ButtonInputMainGameStartButton;#0x802DCD6
	b	ButtonInputMainGameDrawGUI;#0x802DE08
ButtonInputMainGameStartButton:
;Start Button
	ldr	r1,=#0x8090C20
	ldr	r0,[r1]
	ldr	r0,[r0]
	ldrh	r2,[r0,#0x4]
	mov	r0,#0x8
	and	r0,r2
	mov	r4,r1
	cmp	r0,#0x0
	beq	ButtonInputMainGameSelectButton;#0x802DCF4
	bl	#0x802E250
	b	ButtonInputMainGameEnd;#0x802DE12
;	.pool

ButtonInputMainGameSelectButton:
;Select Button
	mov	r0,#0x4
	and	r0,r2
	cmp	r0,#0x0
	beq	ButtonInputMainGameRButton;#0x802DD08
	mov	r0,#0x0
	bl	#0x801B780
	bl	#0x802D458
	b	ButtonInputMainGameEnd;#0x802DE12

ButtonInputMainGameRButton:
;R Button
	mov	r0,#0x80
	lsl	r0,r0,#0x1
	and	r0,r2
	cmp	r0,#0x0
	beq	ButtonInputMainGameLButton;#0x802DD8C

	ldr	r5,=#0x8499590
	ldr	r2,[r5]
	ldr	r4,=#0x30033E4
	ldrh	r1,[r4,#0x2]
	lsl	r1,r1,#0x1
	ldr	r3,=#0x417A
	add	r0,r2,r3
	add	r0,r0,r1
	ldrh	r0,[r0]
	ldrh	r1,[r4]
	add	r0,r0,r1
	add	r2,#0x12
	add	r2,r2,r0
	ldrb	r0,[r2]
	cmp	r0,#0x0
	beq	ButtonInputMainGameRButtonNoUnit;#0x802DD74

	mov	r0,#0x0
	bl	#0x801B780
	ldr	r3,=#0x8499594
	ldr	r2,[r5]
	ldrh	r1,[r4,#0x2]
	lsl	r1,r1,#0x1
	ldr	r5,=#0x417A
	add	r0,r2,r5
	add	r0,r0,r1
	ldrh	r0,[r0]
	ldrh	r1,[r4]
	add	r0,r0,r1
	add	r2,#0x12
	add	r2,r2,r0
	ldrb	r0,[r2]
	lsl	r1,r0,#0x1
	add	r1,r1,r0
	lsl	r1,r1,#0x2
	ldr	r0,[r3]
	add	r0,r0,r1
	bl	#0x803A8F0
	b	ButtonInputMainGameEnd;#0x802DE12
;	.pool
ButtonInputMainGameRButtonNoUnit:;#0x802DD74
	mov	r0,#0x0
	bl	#0x801B780
	ldrh	r0,[r4]
	ldrh	r1,[r4,#0x2]
	bl	#0x803EED4
	lsl	r0,r0,#0x18
	lsr	r0,r0,#0x18
	bl	#0x80470F8
	b	ButtonInputMainGameEnd;#0x802DE12

ButtonInputMainGameLButton:;#0x802DD8C
;L Button
	mov	r0,#0x80
	lsl	r0,r0,#0x2
	and	r0,r2
	cmp	r0,#0x0
	beq	ButtonInputMainGameAButton;#0x802DDC8
	
	bl	#0x8025580
	bl	#0x80254AC
	mov	r1,r0
	cmp	r1,#0x0
	beq	ButtonInputMainGameAButton;#0x802DDC8
	
	ldrb	r0,[r1,#0x2]
	ldrb	r1,[r1,#0x3]
	bl	#0x8029088
	ldr	r0,=#0x849A00C
	bl	#0x8015BD0
	lsl	r0,r0,#0x18
	asr	r0,r0,#0x18
	mov	r1,#0x1
	neg	r1,r1
	cmp	r0,r1
	beq	ButtonInputMainGameAButton;#0x802DDC8

	bl	#0x802DCA4
	b	ButtonInputMainGameEnd;#0x802DE12
;	.pool
	
ButtonInputMainGameAButton:;#0x802DDC8
;A Button
	ldr	r0,[r4]
	ldr	r0,[r0]
	ldrh	r1,[r0,#0x4]
	mov	r0,#0x1
	and	r0,r1
	cmp	r0,#0x0
	beq	ButtonInputMainGameBButton;#0x802DDEC
	ldr	r1,=#0x30033E4
	mov	r2,#0x0
	ldsh	r0,[r1,r2]
	mov	r3,#0x2
	ldsh	r1,[r1,r3]
	bl	#0x802E4B4
	b	ButtonInputMainGameEnd;#0x802DE12
;	.pool

ButtonInputMainGameBButton:;#0x802DDEC
;B Button
	mov	r0,#0x2
	and	r0,r1
	cmp	r0,#0x0
	beq	ButtonInputMainGameDrawGUI;#0x802DE08

	ldr	r1,=#0x30033E4
	mov	r5,#0x0
	ldsh	r0,[r1,r5]
	mov	r2,#0x2
	ldsh	r1,[r1,r2]
	bl	#0x802E2D0
	lsl	r0,r0,#0x18
	cmp	r0,#0x0
	bne	ButtonInputMainGameEnd;#0x802DE12

ButtonInputMainGameDrawGUI:	
	bl	#0x802A7C4
	mov	r0,#0x0
	bl	#0x802776C
;	ldr	r0,=MainGameDrawUnitZoneEffect+1
;	bx	r0
ButtonInputMainGameEnd:	;#0x802DE12
	pop	{r4,r5}
	pop	{r0}
	bx	r0
	.pool


SetupVersus_COChooser_TagCOOAM:
	push	{r4-r7,r14}
	add	sp,-0x8
	ldr	r0,=0x08580934	;Loads Max players
	ldr	r2,[r0]
	ldrb	r1,[r2,0x8]
	mov	r7,r1		;Max Players in r7
	mov	r3,r2
	add	r3,0x30		;Offset RAM for positioning
	mov	r5,0x1		;Current Player
@Player_LoopStart:
	mov	r0,0x2
	str	r0,[sp]
	
	ldr	r3,=0x08580934
	ldr	r3,[r3]
	add	r3,0x30
	lsl	r2,r5,0x2
	add	r2,r2,r3
	ldr	r2,[r2]
	mov	r1,0x28
	ldsh	r0,[r2,r1]
	add	r1,2
	ldsh	r2,[r2,r1]
	add	r2,0x3D		;Y Offsetting
	mov	r1,0x10		;X Offsetting
	add	r1,r0,r1
	
	ldr	r0,=@Object_Queue_ID	;Tile ID
	mov	r3,r5
	sub	r3,1
	add	r0,r0,r3
	ldrb	r0,[r0]
	mov	r3,0x0
	bl	Draw_Object_OAM	
	
	add	r5,1
	cmp	r5,r7
	ble	@Player_LoopStart
	
	add	sp,0x8
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool
	
@Object_Queue_ID:
	.db	0xBD,0xBE,0xBF,0xC0
	
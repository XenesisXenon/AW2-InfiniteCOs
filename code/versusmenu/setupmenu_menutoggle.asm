;SetupMenu_MenuToggle.asm

SetupVersus_ArmyToggle:
	push	{r4,r5,r14}
	;Cursor Position L/R
	ldr	r2,=0x0816E11C
	ldr	r0,[r2]
	ldr	r3,[r0]
	mov	r0,r3
	add	r0,0x32
	ldrb	r0,[r0]		;Cursor Pos
	ldrb	r1,[r3,0x8]	;maximum players
	lsl	r1,r1,0x1
	sub	r4,r0,r1
	
	;Keypad Input Check Up/Down
	ldr	r0,=0x03002EE0
	ldr	r0,[r0]
	ldrh	r1,[r0,0x2]
	mov	r0,0xC0
	and	r0,r1
	mov	r5,r2
	cmp	r0,0x0
	beq	SetupVersus_ArmyToggle_NoButton
	
	mov	r0,0x40
	and	r0,r1
	cmp	r0,0x0
	beq	SetupVersus_ArmyToggle_UpButton_False

	;Button Up
	mov	r0,r3
	add	r0,0xD
	add	r1,r0,r4
	ldrb	r0,[r1]
	sub	r0,1
	cmp	r0,0
	bgt	SetupVersus_ArmyToggle_ButtonFinish
	
	mov	r0,0x5
	b	SetupVersus_ArmyToggle_ButtonFinish

SetupVersus_ArmyToggle_UpButton_False:	
	mov	r0,0x80
	and	r0,r1
	cmp	r0,0x0
	beq	SetupVersus_ArmyToggle_DownButton_False
	
	;button down
	mov	r0,r3
	add	r0,0xD
	add	r1,r0,r4
	ldrb	r0,[r1]
	add	r0,1
	cmp	r0,5
	ble	SetupVersus_ArmyToggle_ButtonFinish
	
	mov	r0,0x1
	b	SetupVersus_ArmyToggle_ButtonFinish	
	
SetupVersus_ArmyToggle_ButtonFinish:
	strb	r0,[r1]
	mov	r0,0x64
	bl	PlaySong

SetupVersus_ArmyToggle_NoButton:
SetupVersus_ArmyToggle_DownButton_False:
	pop	{r4,r5}
	pop	{r0}
	bx	r0
	.pool
	
SetupVersus_ForceRankToggle:
	push	{r4,r5,r14}
	ldr	r2,=0x0816E11C
	ldr	r0,[r2]
	ldr	r3,[r0]
	mov	r0,r3
	add	r0,0x32
	ldrb	r0,[r0]		;Cursor Pos
	ldrb	r1,[r3,0x8]	;maximum players
	mov	r4,0x3
	mul	r1,r4
	sub	r4,r0,r1

	;Keypad Input Check Up/Down
	ldr	r0,=0x03002EE0
	ldr	r0,[r0]
	ldrh	r1,[r0,0x2]
	mov	r0,0xC4
	and	r0,r1
	mov	r5,r2
	cmp	r0,0x0
	beq	SetupVersus_ForceRankToggle_NoButton

	mov	r0,0x40
	and	r0,r1
	cmp	r0,0x0
	beq	SetupVersus_ForceRankToggle_UpButton_False

	;Button Up
	ldrb	r0,[r3,0x8]
	mov	r1,0x3
	mul	r0,r1
	mov	r1,0x32
	add	r1,r1,r3
	ldrb	r1,[r1]
	sub	r1,r1,r0	
	ldr	r0,=Custom_Versusmenu_ForceBuffer
	add	r1,r0,r1
	ldrb	r0,[r1]
	
SetupVersus_ForceRankToggle_UpButton_Redundant:	
	sub	r0,1
	;Redundancy Check
	cmp	r0,0x0
	beq	SetupVersus_ForceRankToggle_UpButton_NotRedundant
	ldr	r2,=Custom_Versusmenu_ForceBuffer
	sub	r3,r1,r2
	lsr	r3,r3,0x2	;Gets number for PXF0
	lsl	r3,r3,0x2
	add	r2,r2,r3	;base offset in r2
	
SetupVersus_ForceRankToggle_UpButton_SlotOne:	
	cmp	r1,r2
	beq	SetupVersus_ForceRankToggle_UpButton_SlotTwo
	ldrb	r3,[r2]
	cmp	r0,r3
	beq	SetupVersus_ForceRankToggle_UpButton_Redundant
	
SetupVersus_ForceRankToggle_UpButton_SlotTwo:	
	add	r2,1
	cmp	r1,r2
	beq	SetupVersus_ForceRankToggle_UpButton_SlotThree
	ldrb	r3,[r2]
	cmp	r0,r3
	beq	SetupVersus_ForceRankToggle_UpButton_Redundant
	
SetupVersus_ForceRankToggle_UpButton_SlotThree:	
	add	r2,1
	cmp	r1,r2
	beq	SetupVersus_ForceRankToggle_UpButton_SlotFour
	ldrb	r3,[r2]
	cmp	r0,r3
	beq	SetupVersus_ForceRankToggle_UpButton_Redundant

SetupVersus_ForceRankToggle_UpButton_SlotFour:	
	add	r2,1
	cmp	r1,r2
	beq	SetupVersus_ForceRankToggle_UpButton_NotRedundant
	ldrb	r3,[r2]
	cmp	r0,r3
	beq	SetupVersus_ForceRankToggle_UpButton_Redundant
	
SetupVersus_ForceRankToggle_UpButton_NotRedundant:	
	cmp	r0,0
	bge	SetupVersus_ForceRankToggle_ButtonFinish
	
	mov	r0,0x2A+1;0x57
	b	SetupVersus_ForceRankToggle_UpButton_Redundant;SetupVersus_ForceRankToggle_ButtonFinish
	
SetupVersus_ForceRankToggle_UpButton_False:	
	mov	r0,0x80
	and	r0,r1
	cmp	r0,0x0
	beq	SetupVersus_ForceRankToggle_DownButton_False
	
	;button down
	ldrb	r0,[r3,0x8]
	mov	r1,0x3
	mul	r0,r1
	mov	r1,0x32
	add	r1,r1,r3
	ldrb	r1,[r1]
	sub	r1,r1,r0	
	ldr	r0,=Custom_Versusmenu_ForceBuffer
	add	r1,r0,r1
	ldrb	r0,[r1]
SetupVersus_ForceRankToggle_DownButton_Redundant:	
	add	r0,1
	;Redundancy Check
	ldr	r2,=Custom_Versusmenu_ForceBuffer
	sub	r3,r1,r2
	lsr	r3,r3,0x2	;Gets number for PXF0
	lsl	r3,r3,0x2
	add	r2,r2,r3	;base offset in r2
	
SetupVersus_ForceRankToggle_DownButton_SlotOne:	
	cmp	r1,r2
	beq	SetupVersus_ForceRankToggle_DownButton_SlotTwo
	ldrb	r3,[r2]
	cmp	r0,r3
	beq	SetupVersus_ForceRankToggle_DownButton_Redundant
	
SetupVersus_ForceRankToggle_DownButton_SlotTwo:	
	add	r2,1
	cmp	r1,r2
	beq	SetupVersus_ForceRankToggle_DownButton_SlotThree
	ldrb	r3,[r2]
	cmp	r0,r3
	beq	SetupVersus_ForceRankToggle_DownButton_Redundant
	
SetupVersus_ForceRankToggle_DownButton_SlotThree:	
	add	r2,1
	cmp	r1,r2
	beq	SetupVersus_ForceRankToggle_DownButton_SlotFour
	ldrb	r3,[r2]
	cmp	r0,r3
	beq	SetupVersus_ForceRankToggle_DownButton_Redundant

SetupVersus_ForceRankToggle_DownButton_SlotFour:	
	add	r2,1
	cmp	r1,r2
	beq	SetupVersus_ForceRankToggle_DownButton_NotRedundant
	ldrb	r3,[r2]
	cmp	r0,r3
	beq	SetupVersus_ForceRankToggle_DownButton_Redundant
	
SetupVersus_ForceRankToggle_DownButton_NotRedundant:	
	cmp	r0,0x2A;0x57
	ble	SetupVersus_ForceRankToggle_ButtonFinish
	
	mov	r0,0x0
	b	SetupVersus_ForceRankToggle_ButtonFinish
	
SetupVersus_ForceRankToggle_DownButton_False:
	;button select
	mov	r0,0x4
	and	r0,r1
	cmp	r0,0x0
	beq	SetupVersus_ForceRankToggle_NoButton
	
	ldrb	r0,[r3,0x8]
	mov	r1,0x3
	mul	r0,r1
	mov	r1,0x32
	add	r1,r1,r3
	ldrb	r1,[r1]
	sub	r1,r1,r0	
	ldr	r0,=Custom_Versusmenu_ForceBuffer
	add	r1,r0,r1
	mov	r0,0x0
	b	SetupVersus_ForceRankToggle_ButtonFinish

SetupVersus_ForceRankToggle_ButtonFinish:
	strb	r0,[r1]
	ldr	r2,=Custom_Versusmenu_ForceBuffer
	sub	r1,r1,r2
	bl	SetupVersus_ForceRankToggle_LoadGraphic
	
	mov	r0,0x64
	bl	PlaySong
	b	SetupVersus_ForceRankToggle_NoButton
	

SetupVersus_ForceRankToggle_NoButton:	
	pop	{r4,r5}
	pop	{r0}
	bx	r0
	.pool
	
SetupVersus_ForceRankToggle_LoadGraphic:
	push	{r14}
	mov	r2,0x80
	mul	r2,r1
	ldr	r1,=0x060109C0
	add	r1,r1,r2	;Destination in r1
	lsl	r0,r0,0x2
	ldr	r2,=ForceRank_Icon_Offset_Table
	add	r0,r0,r2
	ldr	r0,[r0]		;Source in r0
	mov	r2,0x20		;Length in r2
	bl	SWICPUFastSet
	
	pop	{r0}
	bx	r0
	.pool

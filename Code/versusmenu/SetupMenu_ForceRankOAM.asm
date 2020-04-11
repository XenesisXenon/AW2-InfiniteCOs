;SetupMenu_ForceRankOAM.asm
;Handles the OAM for Force Rank icons in the Vs setup Menu

SetupVersus_COChooser_ForceHook:
	bl	SetupVersus_COChooser_ForceOAM
	;original code
	ldr	r0,=0x03002EE0
	ldr	r0,[r0]
	ldrh	r1,[r0,0x4]
	mov	r0,0x2
	and	r0,r1
	lsl	r0,r0,0x10
	ldr	r4,=0x08065FAA+1
	bx	r4
	.pool
	
SetupVersus_COChooser_ForceOAM:
	push	{r4-r7,r14}
	add	sp,-0x8
	;start at OBJ 0x3A
	ldr	r0,=0x08580934	;Loads Max players
	ldr	r2,[r0]
	ldrb	r1,[r2,0x8]
	mov	r7,r1		;Max Players in r7
	mov	r3,r2
	add	r3,0x30		;Offset RAM for positioning
	mov	r5,0x1		;Current Player
SetupVersus_COChooser_ForceOAM_Player_LoopStart:
	mov	r4,0x0		;Current Loop
SetupVersus_COChooser_ForceOAM_LoopStart:
	ldr	r3,=0x08580934
	ldr	r3,[r3]
	add	r3,0x30
	lsl	r2,r5,0x2
	add	r2,r2,r3
	ldr	r2,[r2]
	mov	r1,0x28
	ldsh	r0,[r2,r1]
	add	r1,2
	ldsh	r1,[r2,r1]
	add	r1,0x36		;Y Offsetting
	
	;Alternate Spacing for 4p, Narrower
	ldr	r2,=0x08580934
	ldr	r2,[r2]
	ldrb	r2,[r2,0x8]
	cmp	r2,0x4
	beq	SetupVersus_COChooser_ForceOAM_NarrowSpacing

	sub	r0,8		;X Offsetting	
	mov	r2,16		;Spacing Between Icons
	b	SetupVersus_COChooser_ForceOAM_SpacingEnd
SetupVersus_COChooser_ForceOAM_NarrowSpacing:
	sub	r0,3		;X Offsetting for 4p	
	mov	r2,13		;Narrow Spacing for 4P
SetupVersus_COChooser_ForceOAM_SpacingEnd:	
	mul	r2,r4
	add	r0,r0,r2
	
	mov	r2,r1
	mov	r1,r0
	
	mov	r0,0x2
	str	r0,[sp]
	ldr	r0,=0x0	;Tile ID
	mov	r3,r5
	sub	r3,1
	lsl	r3,r3,0x2
	add	r3,r3,r4
	add	r0,r0,r3
	mov	r3,0x0
	bl	Draw_Object_OAM
	
	add	r4,1
	cmp	r4,4
	blt	SetupVersus_COChooser_ForceOAM_LoopStart

	add	r5,1
	cmp	r5,r7
	ble	SetupVersus_COChooser_ForceOAM_Player_LoopStart	
	
	add	sp,0x8
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool
	

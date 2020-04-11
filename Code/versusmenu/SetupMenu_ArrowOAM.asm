;SetupMenu_ArrowOAM.asm

SetupVersus_COChooser_ArrowOAM:
	push	{r4,r5,r14}
	add	sp,-0x20
	mov	r1,r13
	ldr	r0,=0x0816E120
	ldmia	r0!,{r2-r4}
	stmia	r1!,{r2-r4}
	ldmia	r0!,{r2-r4}
	stmia	r1!,{r2-r4}
	ldmia	r0!,{r2-r3}
	stmia	r1!,{r2-r3}
	ldr	r0,=0x08580934
	ldr	r2,[r0]
	mov	r3,r2
	add	r3,0x32
	mov	r0,0x0
	ldsb	r0,[r3,r0]
	ldrb	r1,[r2,0x8]
	lsl	r1,r1,0x1
	cmp	r0,r1
	bge	SetupVersus_COChooser_ArrowOAM_Custom
	ldr	r1,=0x08065F14+1
	bx	r1
	
SetupVersus_COChooser_ArrowOAM_Custom:
	ldrb	r1,[r2,0x8]
	lsl	r0,r1,0x1
	add	r1,r0,r1
	mov	r0,0x0
	ldsb	r0,[r3,r0]
	cmp	r0,r1
	bge	SetupVersus_COChooser_ArrowOAM_ForceRanks

SetupVersus_COChooser_ArrowOAM_ArmyColour:	
	;Arrows for Army Colour Chooser
	ldrb	r1,[r2,0x8]
	lsl	r1,r1,0x1
	
	sub	r0,r0,r1
	lsr	r1,r0,0x1F
	add	r0,r0,r1
	lsl	r0,r0,0x2
	add	r2,0x34
	add	r2,r2,r0
	ldr	r5,[r2]
	mov	r4,0x28
	ldsh	r0,[r5,r4]	;x offset
	lsl	r1,r1,0x4
	mov	r2,r13
	add	r4,r2,r1
	mov	r3,0x8
	ldsh	r1,[r4,r3]
	add	r0,r0,r1
	mov	r2,0xA
	sub	r0,0xF
	
	ldsh	r1,[r4,r2]	;y offset
	add	r1,0x55
	bl	Long_VersusSetup_ArrowOAM_UpArrow;0x08064474	;Up Arrow
	
	mov	r3,0x28
	ldsh	r0,[r5,r3]
	mov	r2,0xC
	ldsh	r1,[r4,r2]
	add	r0,r0,r1
	mov	r3,0xE
	ldsh	r1,[r4,r3]
	sub	r0,0xF
	add	r1,0x35
	bl	Long_VersusSetup_ArrowOAM_DownArrow;0x08064500	;Down Arrow
	
	ldr	r0,=0x08065F56+1
	bx	r0
	.pool
	
SetupVersus_COChooser_ArrowOAM_ForceRanks:
	;Arrows for Force Ranks Chooser
	push	{r6,r7}
	ldrb	r1,[r2,0x8]	;Load Max Players
	mov	r4,0x3
	mul	r1,r4
	sub	r0,r0,r1
	mov	r7,r0
	lsr	r0,r0,0x2	;X offsetting for 0-3
	lsl	r6,r0,0x2
	sub	r7,r7,r6
	;Rejigger the spacing for 4p - Compress it a bit
	ldrb	r1,[r2,0x8]
	cmp	r1,4
	beq	SetupVersus_COChooser_ArrowOAM_ForceRanks_NarrowSpacing	
	mov	r6,16		;X spacing
	b	SetupVersus_COChooser_ArrowOAM_ForceRanks_SpacingEnd
SetupVersus_COChooser_ArrowOAM_ForceRanks_NarrowSpacing:
	mov	r6,13		;Narrow Spacing for 4P
SetupVersus_COChooser_ArrowOAM_ForceRanks_SpacingEnd:	
	mul	r7,r6
	
	lsr	r1,r0,0x1F
	add	r0,r0,r1
	lsl	r0,r0,0x2
	add	r2,0x34
	add	r2,r2,r0
	ldr	r5,[r2]
	mov	r4,0x28
	ldsh	r0,[r5,r4]
	lsl	r1,r1,0x4
	mov	r2,r13
	add	r2,0x8		;Compensate for stack shift
	add	r4,r2,r1
	mov	r3,0x8
	ldsh	r1,[r4,r3]
	add	r0,r0,r1
	mov	r2,0xA
	ldsh	r1,[r4,r2]
	sub	r0,0x18
	add	r0,r0,r7
	add	r1,0x6D
	;Alternate Spacing for 4p, Narrower
	ldr	r2,=0x08580934
	ldr	r2,[r2]
	ldrb	r2,[r2,0x8]
	cmp	r2,0x4
	bne	SetupVersus_COChooser_ArrowOAM_ForceRanks_UpOffsetEnd
	add	r0,5
SetupVersus_COChooser_ArrowOAM_ForceRanks_UpOffsetEnd:	
	bl	Long_VersusSetup_ArrowOAM_UpArrow;0x08064474	;Up Arrow
	
	mov	r3,0x28
	ldsh	r0,[r5,r3]
	mov	r2,0xC
	ldsh	r1,[r4,r2]
	add	r0,r0,r1
	mov	r3,0xE
	ldsh	r1,[r4,r3]
	sub	r0,0x18
	add	r0,r0,r7
	add	r1,0x48
	;Alternate Spacing for 4p, Narrower
	ldr	r2,=0x08580934
	ldr	r2,[r2]
	ldrb	r2,[r2,0x8]
	cmp	r2,0x4
	bne	SetupVersus_COChooser_ArrowOAM_ForceRanks_DownOffsetEnd
	add	r0,5
SetupVersus_COChooser_ArrowOAM_ForceRanks_DownOffsetEnd:	
	bl	Long_VersusSetup_ArrowOAM_DownArrow;0x08064500	;Down Arrow
	
	pop	{r6,r7}
	ldr	r0,=0x08065F56+1
	bx	r0
	.pool
	
Long_VersusSetup_ArrowOAM_UpArrow:
	LongBL	r2,0x08064474+1
	
Long_VersusSetup_ArrowOAM_DownArrow:
	LongBL	r2,0x08064500+1
	

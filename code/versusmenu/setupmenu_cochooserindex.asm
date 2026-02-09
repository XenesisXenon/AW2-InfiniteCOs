;SetupMenu_COChooserIndex.asm

SetupVersus_COChooser_MaxPosition:
	push	{r4,r5,r14}	;Sets up maximum menu index
	ldr	r5,=0x08580934
	ldr	r0,[r5]
	ldrb	r0,[r0,0x8]
;	lsl	r0,r0,0x2
	mov	r1,SetupVersus_COChooser_Index_Max
	mul	r0,r1
	ldr	r1,=0x08065F92+1
	bx	r1
	.pool

SetupVersus_COChooser_Expansion:
	ldr	r0,=0x08580934
	ldr	r0,[r0]
	mov	r2,r0
	add	r2,0x32
	ldrb	r1,[r2]
	ldrb	r2,[r0,0x8]
	lsl	r2,r2,0x1
	cmp	r1,r2
	bge	SetupVersus_COChooser_ToggleHigh	
	
	mov	r0,0x1
	and	r0,r1
	cmp	r0,0x0
	beq	SetupVersus_COChooser_ToggleFalse
	
	ldr	r0,=0x08065EC8+1	;If CPU Toggle Ok, return
	bx	r0
	
SetupVersus_COChooser_ToggleFalse:
	ldr	r2,=0x08580934
	ldr	r2,[r2]
	add	r2,0x32
	ldr	r0,=0x08065ED4+1	;If we're not on a CPU Toggle
	bx	r0
	
SetupVersus_COChooser_ToggleHigh:
	;Works if the value is higher than the bounds
	ldrb	r1,[r0,0x8]
	mov	r2,0x3
	mul	r2,r1
	mov	r1,0x32
	add	r1,r0,r1
	ldrb	r1,[r1]	
	cmp	r1,r2
	bge	SetupVersus_COChooser_ForceRank
	bl	SetupVersus_ArmyToggle	;Command for toggling the Army Colours
	pop	{r0}
	bx	r0
SetupVersus_COChooser_ForceRank:
	bl	SetupVersus_ForceRankToggle
	pop	{r0}
	bx	r0
	.pool
	

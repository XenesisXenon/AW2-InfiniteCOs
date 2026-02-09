;SetupMenu_InitialObjSetup.asm

SetupVersus_OBJLoader_InitialOBJSetup:
	ldr	r0,[r4]
	strh	r6,[r0,0x4]
	bl	SetupVersus_OBJLoader_ForceRankOBJ
	pop	{r4-r6}
	pop	{r0}
	bx	r0
	.pool
	
SetupVersus_OBJLoader_ForceRankOBJ:
	push	{r14}
	mov	r0,0
@SetupVersus_OBJLoader_ForceRankOBJ_LoopStart:	
	mov	r8,r0
	mov	r2,r0
	
	mov	r0,0x80
	mul	r0,r2
	ldr	r1,=0x060109C0
	add	r1,r0,r1	;Destination in r1
	
	ldr	r0,=Custom_Versusmenu_ForceBuffer
	ldrb	r0,[r0,r2]
	lsl	r0,r0,0x2
	ldr	r2,=ForceRank_Icon_Offset_Table
	add	r0,r0,r2
	ldr	r0,[r0]		;Source in r0
	mov	r2,0x20		;Length in r2
	bl	SWICPUFastSet
	
	mov	r0,r8
	add	r0,1
	cmp	r0,16
	blt	@SetupVersus_OBJLoader_ForceRankOBJ_LoopStart
	
	pop	{r0}
	bx	r0
	.pool

;coredossierpage.asm
	
	
.align 4
Dossier_PointerTable:
	.dw	0x08084C64 ;CO Bio
	.dw	0x08084C64 ;CO Basic Stats
	.dw	0x08084C6C ;Power
	.dw	0x08084C74 ;Super
	.dw	DossierForceRankPage;Force Ranks
	.dw	0x08084C7C ;Unit Stats
	
CoreDossierForceRankTextDisplay:
	;Uses a dynamic string to generate the information
	str	r1,[sp]	;Saves current player ID temporarily
	ldr	r0,=CustomForceRankRAM+(ForceRank_Slot_Total*8)	;Terminates the string from previous use.
	mov	r1,0
	str	r1,[r0]
	;Load the base string
	ldr	r3,=ForceRank_Name_Description
	;String transfer loop
CoreDossierForceRankTextDisplay_StringLoop_Start:
	ldrb	r1,[r3]
	cmp	r1,0x0
	beq	CoreDossierForceRankTextDisplay_StringLoop_End
	strb	r1,[r0]
	add	r0,1
	add	r3,1
	b	CoreDossierForceRankTextDisplay_StringLoop_Start
CoreDossierForceRankTextDisplay_StringLoop_End:
	push	{r2}
	ldr	r1,[sp,0x4]
	mov	r3,ForceRank_Slot_Total
	sub	r1,1
	mul	r1,r3		
	ldr	r3,=CustomForceRankRAM
	add	r3,r1,r3
	mov	r1,0
	str	r1,[sp,0x8]
CoreDossierForceRankTextDisplay_CheckLoop:	
	ldr	r1,[sp,0x8]
	ldrb	r1,[r3,r1]
	cmp	r1,0x0
	beq	CoreDossierForceRankTextDisplay_Empty_ForceSlot

	lsl	r1,r1,0x2
	ldr	r2,=ForceRank_Name_Offset_Table
	add	r2,r1,r2
	
	mov	r1,0xD	;Line Break
	strb	r1,[r0]
	add	r0,1
	
	;Icon
	mov	r1,0x9	;Display Icon
	strb	r1,[r0]
	add	r0,1
	
	ldr	r1,[sp,0x8]
	add	r1,0x95	;Icon ID
	strb	r1,[r0]
	add	r0,1
	
	ldr	r2,[r2]
	
CoreDossierForceRankTextDisplay_StringLoop2_Start:
	ldrb	r1,[r2]
	cmp	r1,0x0
	beq	CoreDossierForceRankTextDisplay_StringLoop2_End
	strb	r1,[r0]
	add	r0,1
	add	r2,1
	b	CoreDossierForceRankTextDisplay_StringLoop2_Start
CoreDossierForceRankTextDisplay_StringLoop2_End:
	ldr	r1,[sp,0x8]
	ldrb	r1,[r3,r1]
	cmp	r1,0x0
	beq	CoreDossierForceRankTextDisplay_Empty_ForceSlot
	
	lsl	r1,r1,0x2
	ldr	r2,=ForceRank_Description_Offset_Table
	add	r2,r1,r2
	
	mov	r1,0x3A	;Colon (:)
	strb	r1,[r0]
	add	r0,1
	mov	r1,0x20	;Space ( )
	strb	r1,[r0]
	add	r0,1
	ldr	r2,[r2]	
CoreDossierForceRankTextDisplay_StringLoop3_Start:
	ldrb	r1,[r2]
	cmp	r1,0x0
	beq	CoreDossierForceRankTextDisplay_StringLoop3_End
	strb	r1,[r0]
	add	r0,1
	add	r2,1
	b	CoreDossierForceRankTextDisplay_StringLoop3_Start
CoreDossierForceRankTextDisplay_StringLoop3_End:

CoreDossierForceRankTextDisplay_Empty_ForceSlot:
	ldr	r1,[sp,0x8]
	add	r1,1
	str	r1,[sp,0x8]
	cmp	r1,ForceRank_Slot_Total
	blt	CoreDossierForceRankTextDisplay_CheckLoop

	;Finish
	pop	{r2}
	mov	r1,0
	strb	r1,[r0]	;Creates a string terminator
	
;	;Load icons to display.
	push	{r2}
	mov	r1,0
	str	r1,[sp,0x8]

CoreDossierForceRankTextDisplay_IconLoop_Start:
	ldr	r1,[sp,0x4]
	mov	r3,ForceRank_Slot_Total
	sub	r1,1
	mul	r1,r3		
	ldr	r3,=CustomForceRankRAM
	add	r3,r1,r3
	
	ldr	r0,[sp,0x8]
	ldrb	r0,[r3,r0]
	ldr	r1,=ForceRank_Icon_Offset_Table
	lsl	r0,r0,0x2
	add	r0,r0,r1
	ldr	r0,[r0]
	
	ldr	r1,[sp,0x8]
	mov	r2,0x80
	mul	r1,r2
	ldr	r2,=0x06004100
	add	r1,r1,r2
	mov	r2,0x80
	bl	SWICpuFastSet
	
	ldr	r1,[sp,0x8]
	add	r1,1
	str	r1,[sp,0x8]
	cmp	r1,ForceRank_Slot_Total
	blt	CoreDossierForceRankTextDisplay_IconLoop_Start
	pop	{r2}

;Finish Whole Code	
	ldr	r3,=Dossier_DynamicStringID
	mov	r0,0x80
	lsl	r0,r0,0x8
	str	r0,[sp]
	mov	r0,0x3F
	str	r0,[sp,0x4]
	mov	r1,5	;Y Height for Text
	ldr	r0,=DossierTextFixReturn+1
	bx	r0
	.pool

;Customised drawing code for Page 4/Force Rank Display.
DossierForceRankPage:
	mov	r0,r7
	bl	@DrawDossierForceRankPage
	ldr	r0,=0x08084C82+1
	bx	r0
	.pool

@DrawDossierForceRankPage:
	push	{r4,r14}
	add	sp,-0x4
	mov	r4,r0
	;bl	0x080853B0 ;R1
	bl	@LongDossierDrawCountryBars
	;Draws other stuff
	ldr	r2,=0x82AC
	mov	r0,0x78
	mov	r1,0x8
	mov	r3,0x3
	bl	@Long_DrawName
	ldr	r0,=0x10D0
	ldr	r2,=0x62B8
	mov	r1,0x18
	mov	r3,0x5
	bl	@Long_DrawFace
	
	add	sp,0x4
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool
@LongDossierDrawCountryBars:
	LongBL	r1,0x080853B0+1
	.align 4

@Long_DrawName:
	push	{r4-r6,r14}
	LongBl	r4,0x08043B62+1
	
@Long_DrawFace:
	push	{r4-r7,r14}
	LongBL	r4,0x0804402E+1

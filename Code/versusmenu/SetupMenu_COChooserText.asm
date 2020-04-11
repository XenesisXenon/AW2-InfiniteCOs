;SetupMenu_COChooserText.asm

SetupVersus_COChooser_TextIDFix:
	mov	r0,r2
	add	r0,0x32
	ldrb	r0,[r0]
	lsl	r0,r0,0x18
	asr	r0,r0,0x18
	ldrb	r5,[r2,0x8]
	lsl	r5,r5,0x1
	cmp	r0,r5
	bge	@SetupVersus_COChooser_TextIDFix_CustomID
	;new code for dynamic text ID here
	b	@CustomID_CODescriptions
	
@SetupVersus_COChooser_TextIDFix_CustomID:
	mov	r6,0x3
	lsr	r5,r5,0x1
	mul	r6,r5
	cmp	r0,r6
	bge	@SetupVersus_COChooser_TextIDFix_CustomID_Forces
	
	ldr	r5,=TextID_VersusSetup
	b	@SetupVersus_COChooser_TextIDFix_CustomID_End
	
@SetupVersus_COChooser_TextIDFix_CustomID_Forces:
	push	{r0-r3}
	mov	r1,0x3
	mul	r1,r5
	sub	r0,r0,r1
	ldr	r1,=Custom_Versusmenu_ForceBuffer
	add	r1,r0,r1
	ldrb	r0,[r1]
	cmp	r0,0x0
	beq	@SetupVersus_COChooser_TextIDFix_CustomID_Forces_Info
	
	ldr	r1,=CustomForceRankRAM+(ForceRank_Slot_Total*8)
	mov	r2,0
	str	r2,[r1]	;Terminates string from previous use
	
	mov	r5,r0
	
	;Loads name text
	mov	r0,r5
	ldr	r2,=ForceRank_Name_Offset_Table
	lsl	r0,r0,0x2
	add	r2,r0,r2
	ldr	r2,[r2]
	
@SetupVersus_COChooser_TextIDFix_CustomID_Forces_NameLoop:
	ldrb	r3,[r2]
	strb	r3,[r1]
	cmp	r3,0x0
	beq	@SetupVersus_COChooser_TextIDFix_CustomID_Forces_NameLoop_End
	add	r1,1
	add	r2,1
	b	@SetupVersus_COChooser_TextIDFix_CustomID_Forces_NameLoop
	
@SetupVersus_COChooser_TextIDFix_CustomID_Forces_NameLoop_End:
	mov	r0,0x3A
	strb	r0,[r1]	;Adds a Colon (:)
	add	r1,1
	mov	r0,0x20
	strb	r0,[r1]	;Adds a Space
	add	r1,1
	
	;Loads description text
	mov	r0,r5
	ldr	r2,=ForceRank_Description_Offset_Table
	lsl	r0,r0,0x2
	add	r2,r0,r2
	ldr	r2,[r2]
	
@SetupVersus_COChooser_TextIDFix_CustomID_Forces_DescLoop:
	ldrb	r3,[r2]
	strb	r3,[r1]
	cmp	r3,0x0
	beq	@SetupVersus_COChooser_TextIDFix_CustomID_Forces_DescLoop_End
	add	r1,1
	add	r2,1
	b	@SetupVersus_COChooser_TextIDFix_CustomID_Forces_DescLoop
	
@SetupVersus_COChooser_TextIDFix_CustomID_Forces_DescLoop_End:
	mov	r0,r5
	mov	r1,9
	bl	DivisionFunction
	mov	r5,r1
	ldr	r0,=Dossier_DynamicStringID
	add	r5,r0,r5

	pop	{r0-r3}
	b	@SetupVersus_COChooser_TextIDFix_CustomID_End
	
@CustomID_CODescriptions:
	;Select out for the CO toggle option
	mov	r5,0x1
	and	r5,r0
	cmp	r5,0x0
	beq	@CustomID_CODescription_Start
	
	lsl	r0,r0,0x1
	add	r0,r0,r1
	ldr	r5,=0x08066F7E+1
	bx	r5
	
@CustomID_CODescription_Start:
	;Copy the Force Ranks code with alternate tables
	@VersusSetup_COList_RAM equ 0x020288A0
	push	{r0-r3}
	asr	r0,r0,0x1
	ldr	r1,=CurrentGameSetupMenu+SetupRule_CO
	ldrb	r0,[r1,r0]
	ldr	r1,=@VersusSetup_COList_RAM
	add	r0,r0,r1
	ldrb	r0,[r0]
	cmp	r0,0xFF
	beq	@CustomID_CODescription_Descloop
	
	ldr	r1,=CustomForceRankRAM+(ForceRank_Slot_Total*8)
	mov	r2,0
	str	r2,[r1]	;Terminates string from previous use
	
	mov	r5,r0
	
	;Loads CO descriptive text
	mov	r0,r5
	ldr	r2,=Table_VersusMenu_Description_Offset
	lsl	r0,r0,0x2
	add	r2,r0,r2
	ldr	r2,[r2]
	
@CustomID_CODescription_Descloop:
	ldrb	r3,[r2]
	strb	r3,[r1]
	cmp	r3,0x0
	beq	@CustomID_CODescription_Endloop
	add	r1,1
	add	r2,1
	b	@CustomID_CODescription_Descloop
	
@CustomID_CODescription_Endloop:
	mov	r0,r5
	mov	r1,9	;Change to 9 to avoid double-ups
	bl	DivisionFunction
	mov	r5,r1
	ldr	r0,=Dossier_DynamicStringID
	add	r5,r0,r5

	pop	{r0-r3}
	b	@SetupVersus_COChooser_TextIDFix_CustomID_End
			
@SetupVersus_COChooser_TextIDFix_CustomID_Forces_Info:
	pop	{r0-r3}
	ldr	r5,=TextID_VersusSetup+1
	b	@SetupVersus_COChooser_TextIDFix_CustomID_End
	
@SetupVersus_COChooser_TextIDFix_CustomID_End:
	ldr	r6,=0x08066F8A+1
	bx	r6
	.pool
	

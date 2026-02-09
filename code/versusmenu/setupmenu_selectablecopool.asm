;SetupMenu_SelectableCOPool.asm

SetupMenu_SelectableCOPool:
;Initialise the CO List data
	mov	r0,0
	mov	r9,r0
	bl	@VersusCOList_Initialise
	
	;Check which list to use
@Check_AW2:
	mov	r0,UnlockBoolean_Custom_VersusAW2
	sub	r0,0x20
	mov	r1,1
	lsl	r1,r0
	ldr	r0,=CurrentUnlockedStatus
	ldr	r0,[r0]
	and	r0,r1
	cmp	r0,0x0
	bne	@COlist_ByGame_AW2
	b	@Check_AW3
	
@COList_ByGame_AW2:
	ldr	r0,=@Table_VersusMenu_Lists+8
	bl	@VersusCOList_Build
	
@Check_AW3:
	mov	r0,UnlockBoolean_Custom_VersusAW3
	sub	r0,0x20
	mov	r1,1
	lsl	r1,r0
	ldr	r0,=CurrentUnlockedStatus
	ldr	r0,[r0]
	and	r0,r1
	cmp	r0,0x0
	bne	@COlist_ByGame_AW3
	b	@Check_AW1
	
@COList_ByGame_AW3:
	ldr	r0,=@Table_VersusMenu_Lists+12
	bl	@VersusCOList_Build
	
@Check_AW1:
	mov	r0,UnlockBoolean_Custom_VersusAW1
	sub	r0,0x20
	mov	r1,1
	lsl	r1,r0
	ldr	r0,=CurrentUnlockedStatus
	ldr	r0,[r0]
	and	r0,r1
	cmp	r0,0x0
	bne	@COlist_ByGame_AW1
	b	@Check_SFW
	
@COList_ByGame_AW1:
	ldr	r0,=@Table_VersusMenu_Lists+4
	bl	@VersusCOList_Build
	
@Check_SFW:	
	mov	r0,UnlockBoolean_Custom_VersusSFW
	sub	r0,0x20
	mov	r1,1
	lsl	r1,r0
	ldr	r0,=CurrentUnlockedStatus
	ldr	r0,[r0]
	and	r0,r1
	cmp	r0,0x0
	bne	@COlist_ByGame_SFW
	b	@Check_CCO

@COList_ByGame_SFW:
	ldr	r0,=@Table_VersusMenu_Lists+16
	bl	@VersusCOList_Build
	
@Check_CCO:
	mov	r0,UnlockBoolean_Custom_VersusCCO
	sub	r0,0x20
	mov	r1,1
	lsl	r1,r0
	ldr	r0,=CurrentUnlockedStatus
	ldr	r0,[r0]
	and	r0,r1
	cmp	r0,0x0
	bne	@COlist_ByGame_CCO
	b	@Check_All
	
@COList_ByGame_CCO:
	ldr	r0,=@Table_VersusMenu_Lists+20
	bl	@VersusCOList_Build

@Check_All:
	mov	r0,r9
	cmp	r0,0
	bne	@COList_SafetyCheck
	
@COList_ByGame_All:
	ldr	r0,=@Table_VersusMenu_Lists+0
	bl	@VersusCOList_Build

@COList_SafetyCheck:	;Runs if there is no CO list selected at all
	ldr	r0,=0x0809137C	;Ram offset
	ldr	r0,[r0]
	ldrb	r0,[r0]
	cmp	r0,0xFF
	bne	@Unlock_End
	b	@COList_ByGame_All

@Unlock_End:
	mov	r0,r9
	pop	{r3,r4}
	mov	r8,r3
	mov	r9,r4
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	.pool
	
@Long_GetUnlockStatus:
	LongBL r1,0x0803CAB8+1
	
@VersusCOList_Initialise:
	ldr	r0,=0x0809137C	;Ram offset
	ldr	r1,[r0]
	mov	r0,0xFF
	strb	r0,[r1]
	bx	r14
	.pool
	
@VersusCOList_Build:
;input r0 = CO List Pointer
;CO List pointer in r7
;Vs CO List pointer RAM in r6
;r9 used as num COs added tally
	push	{r4-r7,r14}
	mov	r7,r0
;Checks for the previous position
	ldr	r1,=0x0809137C	;Ram offset
	ldr	r6,[r1]
	mov	r5,0	;List incrementer
	mov	r4,0	;Selected list incrementer
	
@FindAddressLoop_Start:
	mov	r0,r6
	ldrb	r1,[r0]
	cmp	r1,0xFF	;List Termination
	beq	@Loop_Start
	add	r6,r0,1
	b	@FindAddressLoop_Start
	
@Loop_Start:
	mov	r1,r7
	ldr	r0,[r1]
	add	r1,r5,r0
	ldrb	r0,[r1]
	cmp	r0,0xFF		;List Termination value
	beq	@Loop_End	;Checks for list terminator and stops building list
	
	bl	@Long_GetUnlockStatus;0x0803CAB8 ;Grabs whether the CO is unlocked
	
	lsl	r0,r0,0x18
	cmp	r0,0x0
	beq	@Unlock_False
	
	ldr	r1,[r7]
	add	r1,r1,r5
	ldrb	r0,[r1]
	add	r1,r4,r6
	strb	r0,[r1]
	
	mov	r0,r9
	add	r0,1
	mov	r9,r0
	
	add	r4,1
	
@Unlock_False:
	add	r0,r5,1
	cmp	r0,0xFF
	mov	r5,r0
	bls	@Loop_Start

@Loop_End:
	add	r0,r5,r6
	mov	r1,0xFF
	strb	r1,[r0]
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	.pool

.align 4	
@Table_VersusMenu_Lists:
	.dw	VSCoSelectTable
	.dw	Table_COSelect_AW1
	.dw	Table_COSelect_AW2
	.dw	Table_COSelect_AW3
	.dw	Table_COSelect_SFW
	.dw	Table_COSelect_CCO

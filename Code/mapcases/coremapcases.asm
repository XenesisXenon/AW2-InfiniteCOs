;coremapcases.asm

MapCase_HardToggle:
	;Check
	ldr	r1,=0x081D9410
	ldr	r0,[r1]
	ldr	r3,[r0]
	ldrh	r2,[r3,0x2]
	
	mov	r0,0x4	;Select
	and	r0,r2
	cmp	r0,0x0
	beq	@MapCase_SelectButton_Off
	
	mov	r0,0x0
	strb	r0,[r3,0x2]
	
	ldr	r0,=0x03003FC0
	ldrb	r0,[r0,0x1]
	cmp	r0,0x3
	bne	@MapCase_SelectButton_Off
	
	ldr	r1,=Current_MapCase
	ldrb	r0,[r1]
	cmp	r0,CaseCampaign
	beq	@MapCase_HardToggle_True
	cmp	r0,CaseAW1Campaign
	beq	@MapCase_HardToggle_True
	cmp	r0,CaseAWDSCampaign
	beq	@MapCase_HardToggle_True
	b	@MapCase_SelectButton_Off
@MapCase_HardToggle_True:	
	ldr	r1,=Custom_HardToggleFlag
	mov	r0,0x1
	ldrb	r2,[r1]
	eor	r0,r2
	strb	r0,[r1]
	
	;Clear Text Buffer
	mov	r0,0x0
	bl	LongTextBufferBlankingCode
	
	;Set flag for Text Reload
	ldr	r0,=Custom_MapSelectTextClearFlag
	mov	r1,1
	strb	r1,[r0]
	
	;Reload Strings
	ldr	r4,=0x081D9438
	ldr	r0,[r4]
	ldr	r2,[r0]
	ldr	r1,=MapCaseNameTable
	ldr	r0,=Custom_HardToggleFlag
	ldrb	r0,[r0]
	cmp	r0,0x0
	bne	@MapCase_HardToggle_HardString
	b	@MapCase_HardToggle_NormalString
@MapCase_HardToggle_HardString:
	ldr	r1,=MapCaseNameHardTable
@MapCase_HardToggle_NormalString:
	ldr	r0,=Current_MapCase
	mov	r3,0x0
	ldsh	r0,[r0,r3]
	lsl	r0,r0,1
	add	r0,r0,r1
	ldrh	r3,[r0]
	mov	r0,0x0
	
	add	sp,-0x8
	str	r0,[sp]
	str	r0,[sp,0x4]
	mov	r0,0x1
	mov	r1,0x5
	bl	Long_MapCase_NameString;0x08014A5C
	add	sp,0x8
	
	;Resume Code
	ldr	r1,=0x03005990
	ldr	r0,=0x0300596C
	mov	r6,0x0
	ldsh	r0,[r0,r6]
	add	r0,r0,r1
	ldr	r1,[r5,0x5C]
	strb	r1,[r0]
	mov	r1,r5
	add	r1,0x4E
	mov	r2,0x0
;	ldsh	r0,[r1,r2]
	ldr	r0,=0x080861B0+1
	bx	r0
	.pool
	
@MapCase_SelectButton_Off:
	pop	{r3-r5}
	mov	r8,r3
	mov	r9,r4
	mov	r10,r5
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool
	
Long_MapCase_NameString:
	push	{r4-r7,r14}
	mov	r7,r10
	mov	r6,r9
	mov	r5,r8
	push	{r5-r7}
	LongBl	r6,0x08014A66+1
		
MapCase_CaseOrder_R:
	ldrh	r0,[r4]
	ldr	r1,=List_CaseOrder_R
	add	r1,r0,r1
	ldrb	r1,[r1]
	mov	r0,r1
	str	r0,[r4]
	lsl	r0,r0,0x10
	ldr	r1,=0x080865A0+1
	bx	r1
	.pool

MapCase_CaseOrder_R_EmptyCase:
	ldrh	r0,[r4]	;Iterates map case jumps thru list if one is empty
	ldr	r1,=List_CaseOrder_R
	add	r0,r0,r1
	ldrb	r0,[r0]
	str	r0,[r4]	;*1
	lsl	r0,r0,0x10
	asr	r0,r0,0x10
	ldr	r2,=0x080865D6+1
	bx	r2
	.pool

MapCase_CaseOrder_L:
	ldrh	r0,[r4]
	ldr	r1,=List_CaseOrder_L
	add	r1,r0,r1
	ldrb	r1,[r1]
	mov	r0,r1
	str	r0,[r4]
	lsl	r0,r0,0x10
	ldr	r1,=0x0808649C+1
	bx	r1
	.pool

MapCase_CaseOrder_L_EmptyCase:
	ldrh	r0,[r4]	;Iterates map case jumps thru list if one is empty
	ldr	r1,=List_CaseOrder_L
	add	r0,r0,r1
	ldrb	r0,[r0]
	str	r0,[r4]	;*1
	lsl	r0,r0,0x10
	asr	r0,r0,0x10
	ldr	r2,=0x080864D2+1
	bx	r2
	.pool
	
;Case Order Notes
;AW1 Campaign	0x9
;AW2 Campaign	0x1
;AW3 Campaign	0xA
;FE7 Campaign	0xE
;Classic 	0x2
;Versus 1/2	0x3
;Versus 2/2	0xC
;3P		0x5
;4P		0x6
;Pre-Deployed	0x4
;War Room 1/3	0x7
;War Room 2/3	0xF
;War Room 3/3	0xD
;Survival	0xB
;Design Maps	0x8
	
List_CaseOrder_R:	;List is ordered by index of what is the next case
	.db	0
;CaseCampaign	equ 0x1
	.db	CaseAWDSCampaign
;CaseClassic		equ 0x2
	.db	CaseVersus
;CaseVersus		equ 0x3
	.db	CaseAWDORVersus
;CasePredeployed	equ 0x4
	.db	CaseWarRoom
;Case3P			equ 0x5
	.db	Case4P
;Case4P			equ 0x6
	.db	CasePreDeployed
;CaseWarRoom		equ 0x7
	.db	CaseWarRoomHack2012
;CaseDesignMaps		equ 0x8
	.db	CaseClassic
;CaseExtraOne		equ 0x9 - Campaign (AW1)
	.db	CaseCampaign
;CaseExtraTwo		equ 0xA - Campaign (AWDS)
	.db	CaseDesignMaps
;CaseExtraThree		equ 0xB - Survival (AWDS)
	.db	CaseAW1Campaign
;CaseExtraFour		equ 0xC - 2p/Vs (AWDoR)
	.db	Case3P
;CaseExtraFive		equ 0xD - Trial (AWDoR)
	.db	CaseAWDSSurvival
;CaseExtraSix		equ 0xE - Fire Emblem
	.db	CaseClassic
;CaseExtraSeven		equ 0xF - War Room (AWDS) & War Room Hack 2012
	.db	CaseAWDoRTrial
	
List_CaseOrder_L:
	.db	0
;CaseCampaign	equ 0x1
	.db	CaseAW1Campaign
;CaseClassic		equ 0x2
	.db	CaseDesignMaps
;CaseVersus		equ 0x3
	.db	CaseClassic
;CasePredeployed	equ 0x4
	.db	Case4P
;Case3P			equ 0x5
	.db	CaseAWDoRVersus
;Case4P			equ 0x6
	.db	Case3P
;CaseWarRoom		equ 0x7
	.db	CasePredeployed
;CaseDesignMaps		equ 0x8
	.db	CaseAWDSCampaign
;CaseExtraOne		equ 0x9 - Campaign (AW1)
	.db	CaseAWDSSurvival
;CaseExtraTwo		equ 0xA - Campaign (AWDS)
	.db	CaseCampaign
;CaseExtraThree		equ 0xB - Survival (AWDS)
	.db	CaseAWDoRTrial
;CaseExtraFour		equ 0xC - 2p/Vs (AWDoR)
	.db	CaseVersus
;CaseExtraFive		equ 0xD - Trial (AWDoR)
	.db	CaseWarRoomHack2012
;CaseExtraSix		equ 0xE - Fire Emblem
	.db	CaseClassic
;CaseExtraSeven		equ 0xF - War Room (AWDS) & War Room Hack 2012
	.db	CaseWarroom

.align 4

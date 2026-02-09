;Dossier Page 4
;0x08085708

@Unit_XSpacing equ 54		;Default 54
@Unit_XOffset equ 19		;Default 19
@Unit_PerRow equ 4		;Default 4
@Unit_Total equ 19		;Default 19

@OffenceBar_XOffset equ 36	;Default 36
@DefenceBar_YOffset equ 4

@RangeIcon_XOffset equ 37	;Default
@RangeIcon_YOffset equ 48	;Default
@RangeNumber_XOffset equ 45	;Default 45

@MoveIcon_XOffset equ 37	;Default
@MoveIcon_YOffset equ 48	;Default
@MoveNumber_XOffset equ 45	;Default 45

.area 0x180,0x0
Dossier_COUnitStat_OAM:
	push	{r4-r7,r14}
	mov	r7,r10
	mov	r6,r9
	mov	r5,r8
	push	{r5-r7}
	add	sp,-0x08
	mov	r9,r1
	mov	r0,0x0
	mov	r8,r0

;Primary Loop for the Subroutine
@Loop_Start:	
	mov	r0,r9
	bl	0x080261E8
	
	lsl	r0,r0,0x18
	cmp	r0,0
	beq	@Jump_1;0x08085730
	ldr	r1,=Table_Dossier_Page4_UnitOrder	;0x08616B22
	b	@Army_NoNeotanks		
	.pool

@Jump_1:	;0x08085732
	ldr	r1,=Table_Dossier_Page4_UnitOrder_NoNeos	;0x08616B4A
@Army_NoNeotanks:
	mov	r2,r8
	lsl	r0,r2,0x1
	add	r0,r0,r1
	ldrh	r6,[r0]
	cmp	r6,0x0
	bne	@Unit_True	;0x08085740
	b	@Unit_End	;0x0808586C
	
;Unit Drawing part of the loop	
@Unit_True:	
	mov	r0,r8
	mov	r1,@Unit_PerRow
	bl	SysCall_DivRemainder
	
	mov	r1,@Unit_XSpacing;0x36
	mov	r10,r1
	mov	r2,r10
	mul	r2,r0
	mov	r0,r2
	add	r0,@Unit_XOffset;0x13
	lsl	r0,r0,0x10
	lsr	r0,r0,0x10
	mov	r1,r8
	asr	r2,r1,0x2
	lsl	r1,r2,0x1
	add	r1,r1,r2
	lsl	r7,r1,0x3
	mov	r5,r7
	add	r5,0x28
	lsl	r1,r5,0x10
	lsr	r1,r1,0x10
	str	r6,[sp]
	mov	r2,0x2
	str	r2,[sp,0x4]
	mov	r2,0x0
	mov	r3,r9
	bl	0x080859A0
	
;Add a check to see if we need to blink the display
;Used to swap the icons to not hit the OAM limit
;Loads from RAM pre-set up. Use same ram as Force-Rank dynamic string
	ldr	r0,=Custom_DossierCOBuffer
	ldrb	r0,[r0]
	cmp	r0,0x0
	bne	@DoBlink_True	;Forced branch for testing
	b	@DoBlink_False
	
@DoBlink_True:
;Uses the Frame counter to cycle the blinks
	ldr	r0,=Turn_Frame_Counter
	ldr	r0,[r0]
	lsl	r0,r0,0x18
	lsr	r0,r0,0x1F
	cmp	r0,0
	beq	@DoBlink_False
	b	@DrawRangeMove

@DoBlink_False:
;Draw the Attack Bar
	mov	r0,r6
	bl	0x080432E0
	
	cmp	r0,0x7
	beq	@Unit_IsTransport	;0x080857A8
	;mov	r0,r9
	;mov	r1,r6
	;bl	@Dossier_Firepower_Calculation;0x08085410
	lsl	r0,r6,0x2
	ldr	r1,=Custom_DossierCOBuffer
	add	r1,r0,r1
	ldrb	r0,[r1,0x0]	
	
	mov	r4,r0
	mov	r0,r8
	mov	r1,@Unit_PerRow
	bl	SysCall_DivRemainder
	
	mov	r1,r10
	mul	r1,r0
	add	r1,@OffenceBar_XOffset;0x24
	mov	r2,0x1
	str	r2,[sp]
	mov	r0,r4
	mov	r2,r5
	mov	r3,0x0
	bl	0x0801F34C
	
@Unit_IsTransport:
;Draw the Defence Bar
	;mov	r0,r9
	;mov	r1,r6
	;bl	@Dossier_Defence_Calculation;0x08085410
	lsl	r0,r6,0x2
	ldr	r1,=Custom_DossierCOBuffer
	add	r1,r0,r1
	ldrb	r0,[r1,0x1]	
	
	mov	r4,r0
	mov	r0,r8
	mov	r1,@Unit_PerRow
	bl	SysCall_DivRemainder
	
	mov	r1,r10
	mul	r1,r0
	add	r1,@OffenceBar_XOffset;0x24
	mov	r2,0x1
	str	r2,[sp]
	mov	r0,r4
	mov	r2,r5
	add	r2,@DefenceBar_YOffset
	mov	r3,0x0
	bl	0x0801F34C
	b	@Unit_End

;Draw Range/Movement Icons instead of Bars
@DrawRangeMove:
;Draw Firing Range Deltas
	ldr	r0,=Core_Dossier_COStatOAM+1
	bx	r0
Return_Dossier_COStatOAM_Movement:	
	b	@Unit_End	;0x0808586C	
	
@Unit_FiringDelta_Zero:
	b	@DoBlink_False
	
;End of the Loop
@Unit_End:	;0x0808586C
	mov	r0,0x1
	add	r8,r0
	mov	r1,r8
	cmp	r1,@Unit_Total;0x13
	bgt	@Loop_End	;0x08085878
	b	@Loop_Start	;0x0808571A
@Loop_End:	
	
	add	sp,0x8
	pop	{r3-r5}
	mov	r8,r3
	mov	r9,r4
	mov	r10,r5
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool
	
@Dossier_Firepower_Calculation:
	mov	r0,0x9E
	bx	r14

@Dossier_Defence_Calculation:
	mov	r0,0x9E
	bx	r14

.endarea
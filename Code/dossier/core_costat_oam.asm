;core_costat_oam.asm
;Extra code for the OAM pages
@Unit_XSpacing equ 54		;Default 54
@Unit_XOffset equ 19		;Default 19
@Unit_PerRow equ 4		;Default 4
@Unit_Total equ 19		;Default 19

@OffenceBar_XOffset equ 36	;Default 36
@DefenceBar_YOffset equ 4

@RangeIcon_XOffset equ 37	;Default
@RangeIcon_YOffset equ 50	;Default
@RangeNumber_XOffset equ 45	;Default 45

@MoveIcon_XOffset equ 37	;Default
@MoveIcon_YOffset equ 42	;Default
@MoveNumber_XOffset equ 45	;Default 45

Core_Dossier_COStatOAM:
	lsl	r0,r6,0x2
	ldr	r1,=Custom_DossierCOBuffer
	add	r1,r0,r1
	ldrb	r0,[r1,0x3]	
	cmp	r0,0x0
	beq	@Unit_FiringDelta_Zero
	
	mov	r0,r8
	mov	r1,@Unit_PerRow
	bl	@Long_SysCall_DivRemainder
	
	mov	r1,r10
	mul	r1,r0
	add	r1,@RangeIcon_XOffset;0x25
	mov	r5,r7
	add	r5,@RangeIcon_YOffset;0x30
	mov	r0,0x1
	str	r0,[sp]
	mov	r0,0x94
	mov	r2,r5
	mov	r3,0x0
	bl	@Long_0801F34C;0x0801F34C

	lsl	r0,r6,0x2
	ldr	r1,=Custom_DossierCOBuffer
	add	r1,r0,r1
	ldrb	r0,[r1,0x3]
	
	mov	r4,r0
	mov	r0,r8
	mov	r1,@Unit_PerRow
	bl	@Long_SysCall_DivRemainder
	
	mov	r1,r10
	mul	r1,r0
	add	r1,@RangeNumber_XOffset;0x2D
	mov	r2,0x1
	str	r2,[sp]
	mov	r0,r4
	mov	r2,r5
	mov	r3,0x0
	bl	@Long_0801F34C;0x0801F34C

@Unit_FiringDelta_Zero:
;Draw Movement Range Deltas
	lsl	r0,r6,0x2
	ldr	r1,=Custom_DossierCOBuffer
	add	r1,r0,r1
	ldrb	r0,[r1,0x2]
	
	cmp	r0,0x0
	beq	@Unit_End	;0x0808586C
	mov	r0,r8
	mov	r1,@Unit_PerRow
	bl	@Long_SysCall_DivRemainder
	
	mov	r1,r10
	mul	r1,r0
	add	r1,@MoveIcon_XOffset;0x25
	mov	r5,r7
	add	r5,@MoveIcon_YOffset;0x30
	mov	r0,0x1
	str	r0,[sp]
	mov	r0,0x93
	mov	r2,r5
	mov	r3,0x0
	bl	@Long_0801F34C;0x0801F34C
	
	lsl	r0,r6,0x2
	ldr	r1,=Custom_DossierCOBuffer
	add	r1,r0,r1
	ldrb	r0,[r1,0x2]	
	
	mov	r4,r0
	mov	r0,r8
	mov	r1,@Unit_PerRow
	bl	@Long_SysCall_DivRemainder;SysCall_DivRemainder
	
	mov	r1,r10
	mul	r1,r0
	add	r1,@MoveNumber_XOffset;0x2D
	mov	r2,0x1
	str	r2,[sp]
	mov	r0,r4
	mov	r2,r5
	mov	r3,0x0
	bl	@Long_0801F34C;0x0801F34C
	
@Unit_End:
;Returns back to the main code
	ldr	r0,=Return_Dossier_COStatOAM_Movement+1
	bx	r0
	.pool

@Long_0801F34C:
	push	{r4-r7,r14}
	mov	r7,r8
	push	{r7}
	add	sp,-0x4
	LongBL	r6,0x0801F354+1

@Long_08085638:
	LongBL	r2,0x08085638+1
	
@Long_080856A0:
	LongBL r2,0x080856A0+1

@Long_SysCall_DivRemainder:
	swi	0x6
	mov	r0,r1
	bx	r14
	
Core_Dossier_SavePlayerPage:	
	add	sp,0x4
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool

Dossier_COBlinkCheckCalculator:
	;Input of CO ID in r0, CO Power State in r1
	push	{r4-r7,r14}
	mov	r7,r0
	mov	r6,r1
	ldr	r2,=BaseCOUnitAttributesTable
	mov	r5,r2
	ldr	r2,=coUnitAtrib_Length
	mul	r2,r0
	add	r5,r2,r5
	ldr	r2,=coUnitAtrib_COPLength
	mul	r2,r1
	add	r5,r2,r5
	mov	r1,1
	
@Loop_Start:
	mov	r2,8
	mul	r2,r1
	add	r2,r2,r5
	ldrh	r0,[r2,0x4]
	cmp	r0,0
	bne	@Blink_True
	ldrh	r0,[r2,0x6]
	cmp	r0,0
	bne	@Blink_True
	add	r1,1
	cmp	r1,25
	bge	@Blink_False
	b	@Loop_Start
	
@Blink_True:
	mov	r0,1
	b	@Blink_End
	
@Blink_False:
	mov	r0,0
@Blink_End:	
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	.pool

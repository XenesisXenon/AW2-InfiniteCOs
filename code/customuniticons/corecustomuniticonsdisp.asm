;coreveterancydisp.asm
.align 4
VeterancyIconDisplay1:
	mov	r3,r10
	ldr	r0,[r3]
	ldr	r2,[r0]
	lsr	r1,r5,#0xA
	mov	r4,r9
	lsr	r0,r4,#0xF
	add	r0,r0,r2
	add	r1,r1,r0
	mov	r2,#0xD8
	lsl	r2,r2,#0x2
	mov	r0,r2
	
VeterancyIconDisplay2:
	strh	r0,[r1,#0x2]
	mov	r3,r10
	ldr	r0,[r3]
	ldr	r2,[r0]
	lsr	r1,r5,#0xA
	mov	r4,r9
	lsr	r0,r4,#0xF
	add	r0,r0,r2
	add	r1,r1,r0
	mov	r2,r1
	add	r2,#0x42
	mov	r3,#0xD8
	lsl	r3,r3,#0x2
	mov	r0,r3
	strh	r0,[r2]
	add	r1,#0x40
	strh	r0,[r1]
	
	mov	r4,r8
	ldrb	r5,[r4]
	cmp	r0,#0x0
	beq	VeterancyIconDisplayBranch1;#0x8700DCE
	
	ldrb	r5,[r4,#0x6]
	lsr	r5,r5,#0x7
	cmp	r5,#0x0
	beq	VeterancyIconDisplayBranch2;#0x8700DB4
	
	ldr	r5,=CurrentPlayerTurn
	ldrb	r5,[r5]
	ldr	r6,=BaseUnitOffset
	ldr	r7,=#0x300
	mul	r5,r7
	add	r5,r5,r6
	cmp	r4,r5
	ble	VeterancyIconDisplayBranch3;#0x8700DB0
	
	ldr	r7,=#0x300
	add	r5,r5,r7
	sub	r5,#0x1
	cmp	r4,r5
	bge	VeterancyIconDisplayBranch3;#0x8700DB0
	
	b	VeterancyIconDisplayBranch2;#0x8700DB4
	
	lsl	r0,r0,#0x0
	lsl	r0,r0,#0x0
VeterancyIconDisplayBranch3:	
	ldr	r5,=#0xD341
	strh	r5,[r1]
VeterancyIconDisplayBranch2:	
	ldrb	r5,[r4,#0x1]
	lsr	r5,r5,#0x6
	cmp	r5,#0x0
	beq	VeterancyIconDisplayBranch1;#0x8700DCE
	
	ldrb	r6,[r4,#0x4]
	lsl	r6,r6,#0x19
	lsr	r6,r6,#0x19
	cmp	r6,#0x5B
	bge	VeterancyIconDisplayBranch4;#0x8700DC8
	
	add	r5,#0x3
VeterancyIconDisplayBranch4:	
	ldr	r6,=#0xD341
	add	r6,r5,r6
	strh	r6,[r2]

VeterancyIconDisplayBranch1:
;	;This is for Drawing Unit Zones
;	mov	r0,r8
;	mov	r1,r6
;	bl	UnitZoneCalculation
	pop	{r3-r5}
	mov	r8,r3
	mov	r9,r4
	mov	r10,r5
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool
	
;Graphics Loader Routines
;08700C40
VetGraphicsTransferFrame1:
	ldr	r1,[r5]
	lsl	r1,r1,0x1C
	lsr	r1,r1,0x1E
	lsl	r1,r1,0xE
	ldr	r0,=0x060067E0
	add	r1,r1,r0
	mov	r0,r4
	mov	r2,0x20
	bl	VetGraphicsLoaderTransferGraphicData
	ldr	r0,=0x060067E0
	mov	r1,0x80
	lsl	r1,r1,0x8
	add	r1,0x20
	add	r1,r1,r0
	ldr	r0,=GraphicsVeteranIcons;0x861D200
	mov	r2,0xE0
	add	r2,0xE0
	bl	VetGraphicsLoaderTransferGraphicData
	pop	{r4,r5}
	pop	{r0}
	bx	r0
	.pool
	
VetGraphicsTransferFrame2:
;08700CC0
	ldr     r0,=#0x81251B0
	ldr     r1,=#0x30030B4
	ldr     r1,[r1]
	lsl     r1,r1,#0x1C
	lsr     r1,r1,#0x1E
	lsl     r1,r1,#0xE                     
	ldr     r2,=#0x60067E0                       
	add     r1,r1,r2                             
	mov     r2,#0x20                            
	bl      VetGraphicsLoaderTransferGraphicData;#0x8700C00                               
;	b       #0x8700CE0 
	ldr	r0,=0x060067E0
	mov	r1,0x80
	lsl	r1,r1,0x8
	add	r1,0x20
	add	r1,r1,r0
	ldr	r0,=GraphicsVeteranIcons+0x200;0x861D400
	mov	r2,0xE0
	add	r2,0xE0
	bl      VetGraphicsLoaderTransferGraphicData;#0x8700C00                               
	pop     {r4,r5}                               
	pop     {r0}                                
	bx      r0   
	.pool
	
VetGraphicsTransferFrame3:
;0x8700C81
	ldr	r1,[r4]
	lsl	r1,r1,0x1C
	lsr	r1,r1,0x1E
	lsl	r1,r1,0xE
	ldr	r0,=0x060067E0
	add	r1,r1,r0
	add	r1,r1,r0
	mov	r0,r5
	mov	r2,0x20
	bl	VetGraphicsLoaderTransferGraphicData
	ldr	r0,=0x060067E0
	mov	r1,0x80
	lsl	r1,r1,0x8
	add	r1,0x20
	add	r1,r1,r0
	ldr	r0,=GraphicsVeteranIcons+0x400;0x0861D600
	mov	r2,0xE0
	add	r2,0xE0
	bl	VetGraphicsLoaderTransferGraphicData
	pop	{r4,r5}
	pop	{r0}
	bx	r0
	.pool
	
;Special Graphics Loader Subroutines
;08700C00
VetGraphicsLoaderTransferGraphicData:
	push	{r14}
	mov	r3,r0
	lsl	r2,r2,0x10
	and	r0,r2
	cmp	r0,0x0
	beq	VetGraphicsLoaderTransferGraphicDataEqual
	lsr	r2,r2,0x11
	mov	r0,r3
	bl	SWICpuSet
	b	VetGraphicsLoaderTransferGraphicDataEnd	
VetGraphicsLoaderTransferGraphicDataEqual:
	lsr	r2,r2,0x12
	mov	r0,r3
	bl	SWICpuFastSet
VetGraphicsLoaderTransferGraphicDataEnd:
	pop	{r0}
	bx	r0
;Blank Line	

;HookCaptureCapability.asm
;Controls which units can use the Capture command.
;Modifies the code so it is no longer a hardcoded system while also reducing the
;number of instructions.

;New Code with Table
.org 0x0804151C
	push	{r4-r7,r14}
	mov 	r7, r9
	mov	r6, r8
	push 	{r6,r7}
	add 	sp,-0x8
	mov 	r0, 0x0
	mov 	r9, r0
	ldr	r0,=0x03003F20
	ldr 	r5,[r0]
	ldr 	r0,=0x030040D8
	ldr 	r0,[r0]
	ldrb	r0,[r0]
	ldr	r4,=CaptureCapabilityTable
	add	r0, r0, r4
	ldrb	r0, [r0]
	cmp	r0, 0x1
	beq	CannotCaptureLoop
	mov 	r0, 0x0
	b 	EndOfCaptureCheck
	
	mov 	r7, 0x0
	ldr 	r1,=BaseMapPointer
	ldr 	r0, [r1]
	ldrh 	r0,[r0,0x2]
	cmp 	r9, r0
	bge 	CaptureEndOfMap

	mov     r3,r1
CaptureCapabilityLoop:
	mov	r4, 0x0
	ldr     r0,[r3]
	add     r1,r7,1
	mov     r8,r1
	ldrh	r0,[r0]
	cmp	r0, 0x0
	ble	CaptureOutOfBounds

	ldr	r1,=#0x3003340 ;Not sure what this pointer does.
	lsl	r0,r7,#0x2
	add	r6,r0,r1
	lsl	r2,r7,#0x10

CapturePropertyCheckerLoop:
	ldr	r0,[r6]
	add	r0,r0,r4
	ldrb	r0,[r0]
	lsl	r0,r0,#0x18
	asr	r0,r0,#0x18
	cmp	r0,#0x0
	blt	CannotCaptureLoop

	mov 	r0, r4
	asr	r1,r2,#0x10
	str	r2,[sp]
	str	r3,[sp,#0x4]
	bl	#0x804236C ;This Bl takes an input of x/y and returns if the tile is captureable
	ldr	r2,[sp]
	ldr	r3,[sp,#0x4]
	cmp	r0,#0x1
	bne	CannotCaptureLoop

	mov	r0,#0x1
	add	r9,r0
	strb	r4,[r5]
	strb	r7,[r5,#0x1]
	ldr	r0,[r6]
	add	r0,r0,r4
	ldrb	r0,[r0]
	lsl	r0,r0,#0x18
	asr	r0,r0,#0x18
	strh	r0,[r5,#0x2]
	add	r5,#0x4

CannotCaptureLoop:
	add	r4,#0x1
	ldr	r0,[r3]
	ldrh	r0,[r0]
	cmp	r4,r0
	blt	CapturePropertyCheckerLoop
CaptureOutOfBounds:
	mov	r7,r8
	ldr	r0,[r3]
	ldrh	r0,[r0,#0x2]
	cmp	r7,r0
	blt	CaptureCapabilityLoop
CaptureEndOfMap:
	ldr	r0,=#0xFFFF
	strh	r0,[r5,#0x2]
	mov	r0,r9
EndOfCaptureCheck:
	add	sp,#0x8
	pop	{r3,r4}
	mov	r8,r3
	mov	r9,r4
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	.align 4
	.pool
	
.org 0x0804236C
	push	{r4-r6,r14}
	ldr	r2,=#0x3003F38
	ldrb	r3,[r2]
	ldr	r6,=BaseMapPointer
	ldr	r2,[r6]
	lsl	r1,r1,#0x10
	asr	r5,r1,#0xF
	ldr	r4,=#0x417A
	add	r1,r2,r4
	add	r1,r1,r5
	ldrh	r1,[r1]
	lsl	r0,r0,#0x10
	asr	r4,r0,#0x10
	add	r1,r1,r4
	ldr	r0,=#0x1432
	add	r2,r2,r0
	add	r2,r2,r1
	ldrb	r1,[r2]
	mov	r0,r3
	bl	#0x8026FD0
	lsl	r0,r0,#0x18
	lsr	r0,r0,#0x18
	cmp	r0,#0x1
	beq	TerrainCaptureAlreadyAllied
	ldr	r1,[r6]
	ldr	r2,=#0x417A
	add	r0,r1,r2
	add	r0,r0,r5
	ldrh	r0,[r0]
	add	r0,r0,r4
	ldr	r4,=#0x1432
	add	r1,r1,r4
	add	r1,r1,r0
	ldrb	r1,[r1]
	mov	r0,#0x1F
	and	r1,r0
	ldr	r0,=TerrainListCaptureableTiles
	add	r0,r0,r1
	ldrb	r0,[r0]
	b	TerrainCaptureCheckEnd
TerrainCaptureAlreadyAllied:
	mov 	r0, 0x0
TerrainCaptureCheckEnd:	
	pop	{r4-r6}
	pop	{r1}
	bx	r1
	.align 4
	.pool
	
TerrainListCaptureableTiles:
	.db 0,0,0,0,0,0,1,0,1,0,1,1,0,0,1,0
	.db 0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0
	
;Blank Line

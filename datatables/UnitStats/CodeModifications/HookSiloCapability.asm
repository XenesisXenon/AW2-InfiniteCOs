;HookSiloCapability.asm
;Hooks up the Silo use capability to use the capture table rather
;than a hardcoded value.
;New Code with Table
.org 0x08041758
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
	ldr	r4,=SiloCapabilityTable
	add	r0, r0, r4
	ldrb	r0, [r0]
	cmp	r0, 0x1
	beq	CannotSiloLoop
	mov 	r0, 0x0
	b 	EndOfSiloCheck
	
	mov 	r7, 0x0
	ldr 	r1,=BaseMapPointer
	ldr 	r0, [r1]
	ldrh 	r0,[r0,0x2]
	cmp 	r9, r0
	bge 	SiloEndOfMap

	mov     r3,r1
SiloCapabilityLoop:
	mov	r4, 0x0
	ldr     r0,[r3]
	add     r1,r7,1
	mov     r8,r1
	ldrh	r0,[r0]
	cmp	r0, 0x0
	ble	SiloOutOfBounds

	ldr	r1,=#0x3003340 ;Not sure what this pointer does.
	lsl	r0,r7,#0x2
	add	r6,r0,r1
	lsl	r2,r7,#0x10

SiloPropertyCheckerLoop:
	ldr	r0,[r6]
	add	r0,r0,r4
	ldrb	r0,[r0]
	lsl	r0,r0,#0x18
	asr	r0,r0,#0x18
	cmp	r0,#0x0
	blt	CannotSiloLoop

	mov 	r0, r4
	asr	r1,r2,#0x10
	str	r2,[sp]
	str	r3,[sp,#0x4]
	bl	#0x804247C ;This Bl takes an input of x/y and returns if the tile is a useable silo
	ldr	r2,[sp]
	ldr	r3,[sp,#0x4]
	cmp	r0,#0x1
	bne	CannotSiloLoop

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

CannotSiloLoop:
	add	r4,#0x1
	ldr	r0,[r3]
	ldrh	r0,[r0]
	cmp	r4,r0
	blt	SiloPropertyCheckerLoop
SiloOutOfBounds:
	mov	r7,r8
	ldr	r0,[r3]
	ldrh	r0,[r0,#0x2]
	cmp	r7,r0
	blt	SiloCapabilityLoop
SiloEndOfMap:
	ldr	r0,=#0xFFFF
	strh	r0,[r5,#0x2]
	mov	r0,r9
EndOfSiloCheck:
	add	sp,#0x8
	pop	{r3,r4}
	mov	r8,r3
	mov	r9,r4
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	.align 4
	.pool

;Blank Line	

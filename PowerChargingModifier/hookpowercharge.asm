;hookpowercharge.asm
;This adds to the power charging subroutine to allow stuff like Sasha's SCOp

.org 0x08041C32
PowerChargeSystem:
	ldr	r0,=#0x30040D8
	ldr     r0,[r0]
	ldrb    r1,[r0]
	ldr     r0,[sp,#0x4]
	bl      #0x8042C9C ;Unit Cost

	mov     r5,r0
	ldr     r1,[r6]
	mov     r2,#0x8
	ldsh    r0,[r1,r2]
	cmp     r0,#0x0
	beq     PowerChargeSystemOne;#0x8041C60

	sub     r0,#0x1
	mov     r1,#0xA
	bl      #0x808AAAC ;Division
	
	sub     r1,r4,1
	sub     r1,r1,r0
	mov     r6,r1
	mul     r6,r5
	b       PowerChargeSystemTwo;#0x8041C64
	.pool

PowerChargeSystemOne:
	mov     r6,r4
	mul     r6,r5

PowerChargeSystemTwo:
	ldrb    r1,[r7,#0x4]
	mov     r0,#0x7F
	and     r0,r1
	cmp     r0,#0x0
	beq     PowerChargeSystemThree;#0x8041C7E

	lsl     r0,r1,#0x19
	lsr     r0,r0,#0x19
	sub     r0,#0x1
	mov     r1,#0xA
	bl      #0x808AAAC ;Division

	add     r4,r0,1
	b       PowerChargeSystemFour;#0x8041C80

PowerChargeSystemThree:
	mov     r4,#0x0

PowerChargeSystemFour:
	ldrb    r1,[r7]
	ldr     r0,[sp,#0x8]
	bl      #0x8042C9C ;Unit Cost

	mov     r5,r0
	mov     r0,r8
	ldr     r1,[r0]
	mov     r2,#0x8
	ldsh    r0,[r1,r2]
	cmp     r0,#0x0
	beq     PowerChargeSystemFive;#0x8041CA8

	sub     r0,#0x1
	mov     r1,#0xA
	bl      #0x808AAAC ;Division

	sub     r1,r4,1
	sub     r1,r1,r0
	mov     r4,r1
	mul     r4,r5
	b       PowerChargeSystemSix;#0x8041CAA

PowerChargeSystemFive:
	mul     r4,r5

PowerChargeSystemSix:
	mov     r0,r4
	mov     r1,#0x2
	bl      #0x808AAAC ;Division
	
	mov     r1,r0
	add     r1,r6,r1
	ldr     r0,[sp,#0x4]
	bl      #0x80440E0 ;Apply COP Charge

	mov     r0,r6
	mov     r1,#0x2
	bl      #0x808AAAC ;Division
	
	mov     r1,r0
	add     r1,r4,r1
	ldr     r0,[sp,#0x8]
	bl      #0x80440E0 ;Apply COP Charge

	mov     r1,r9
	ldr     r0,[r1]
	ldrb    r2,[r0,#0x9]
	cmp     r2,#0x3
	bne     #0x8041CF4
	ldr     r0,=#0x30033EC
	ldrh    r1,[r0]
	mov     r2,r10
	ldr     r0,[r2]
	ldr     r2,[r0]
	lsl     r0,r1,#0x4
	sub     r0,r0,r1
	lsl     r0,r0,#0x2
	add     r0,r0,r2
	ldrb    r0,[r0,#0x1B]
	mov     r2,#0x0
	cmp     r0,#0x1
	bne     PowerChargeSystemSeven;#0x8041CF4

	mov     r2,#0x2

PowerChargeSystemSeven:
	cmp     r2,#0x0
	beq     PowerChargeSystemEight;#0x8041D18

	bl      #0x802DCA4	;Don't KNow
	
	ldr     r0,=#0x849FEF8
	mov     r1,#0x3
	bl      #0x801C8F4	;Don't Know

	add     r0,#0x64
	mov     r3,r13
	ldrh    r3,[r3]
	strh    r3,[r0]
	b       PowerChargeSystemNine;#0x8041D2C
	.pool

PowerChargeSystemEight:

	bl      #0x802DCA4

	ldr     r0,=#0x849FFB0
	mov     r1,#0x3
	bl      #0x801C8F4

	add     r0,#0x64
	mov     r1,r13
	ldrh    r1,[r1]
	strh    r1,[r0]
PowerChargeSystemNine:
	ldr	r0,=PowerChargeAddition+1
	bx	r0
	;add     sp,#0xC
	;pop     {r3-r5}
	;mov     r8,r3
	;mov     r9,r4
	;mov     r10,r5
	;pop     {r4-r7}
	;pop     {r0}
	;bx      r0
	.pool
;Blank Line

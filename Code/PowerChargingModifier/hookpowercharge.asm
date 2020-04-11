;hookpowercharge.asm
;This adds to the power charging subroutine to allow stuff like Sasha's SCOP
;Re-engineered to add multiple charge systems

.org 0x08041C32	;The subroutine this starts at is at 0x08041978
	mov	r0,r8
	mov	r1,r9
	mov	r2,r10
	push	{r0-r2}
	ldr	r0,=PowerChargeSystem+1
	bx	r0

PowerChargeSys_End:
	pop	{r0-r2}
	mov	r8,r0
	mov	r9,r1
	mov	r10,r2
	
	;Original Code that IDK
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
	bne     @PowerChargeSystemSeven;#0x8041CF4

	mov     r2,#0x2

@PowerChargeSystemSeven:
	cmp     r2,#0x0
	beq     @PowerChargeSystemEight;#0x8041D18

	bl      #0x802DCA4	;Don't Know
	
	ldr     r0,=#0x849FEF8
	mov     r1,#0x3
	bl      #0x801C8F4	;Don't Know

	add     r0,#0x64
	mov     r3,r13
	ldrh    r3,[r3]
	strh    r3,[r0]
	b       @PowerChargeSystemNine;#0x8041D2C
	.pool

@PowerChargeSystemEight:

	bl      #0x802DCA4

	ldr     r0,=#0x849FFB0
	mov     r1,#0x3
	bl      #0x801C8F4

	add     r0,#0x64
	mov     r1,r13
	ldrh    r1,[r1]
	strh    r1,[r0]
	
@PowerChargeSystemNine:
	add     sp,#0xC
	pop     {r3-r5}
	mov     r8,r3
	mov     r9,r4
	mov     r10,r5
	pop     {r4-r7}
	pop     {r0}
	bx      r0
	.pool
	

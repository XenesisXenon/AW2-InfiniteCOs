;powertypehighsociety.asm

COPowerTypeHighSociety:
	@@HighSocietyFirepowerMultiplier equ 3

	push    {r4,r5,r14}
	ldr     r4,=CurrentPlayerTurn
	ldrh    r1,[r4]
	ldr     r5,=BaseUnitPointer
	ldr     r2,[r5]
	lsl     r0,r1,0x4
	sub     r0,r0,r1
	lsl     r0,r0,0x2
	add     r0,r0,r2
	ldrb    r0,[r0,#0x11]
	mov     r1,@@HighSocietyFirepowerMultiplier
	mul     r0,r1
	ldrh    r2,[r4]
	ldr     r3,[r5]
	lsl     r1,r2,#0x4
	sub     r1,r1,r2
	lsl     r1,r1,#0x2
	add     r1,r1,r3
	strh    r0,[r1,#0x26]
	ldrh    r1,[r4]
	lsl     r0,r1,#0x4
	sub     r0,r0,r1
	lsl     r0,r0,#0x2
	add     r0,r0,r3
	mov     r1,#0xA
	strh    r1,[r0,#0x28]
	pop     {r4,r5}
	pop     {r0}
	bx      r0
	.pool
;Blank Line	

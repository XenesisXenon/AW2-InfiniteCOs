;Standard CO Power Type

.org 0x08044534
COPowerTypeStandard:
	ldr	r2,=0x030033EC
	ldrh	r1,[r2]
	ldr	r0,=0x08499598
	ldr	r3,[r0]
	lsl	r0,r1,0x4
	sub	r0,r0,r1
	lsl	r0,r0,0x2
	add	r0,r0,r3
	mov	r1,0x0
	strh	r1,[r0,0x26]
	ldrh	r1,[r2]
	lsl	r0,r1,0x4
	sub	r0,r0,r1
	lsl	r0,r0,0x2
	add	r0,r0,r3
	mov	r1,0xA
	strh	r1,[r0,0x28]
	bx	r14
	.pool

;Blank Line

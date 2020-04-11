;Animates Two COs swapping
;For Tag CO System

Centre_BG0_Frame:
	ldr	r0,=Video_BG0_Position
	mov	r1,0
	strh	r1,[r0]
	strh	r1,[r0,0x2]
	bx	r14
	.pool
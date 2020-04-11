;coremeteographicexpansion.asm
;Modifies the Meteor Graphic controller at 0x08044968 
;to provide multiple options

;.org 0x08044968
MeteorStrikeGraphicsExpansion:
	push    {r14}
	mov     r1,r0
	add     r1,#0x66
	mov     r2,#0x0
	ldsh    r0,[r1,r2]
	cmp     r0,#0x0
	beq     CustomMeteorGraphicsEnd;#0x804498C
	
	ldr     r2,=#0x8499594
	mov     r1,r0
	lsl     r0,r1,#0x1
	add     r0,r0,r1
	lsl     r0,r0,#0x2
	ldr     r1,[r2]
	add     r1,r1,r0
	ldrb    r0,[r1,#0x2]
	ldrb    r1,[r1,#0x3]
	bl      MeteorGraphicSubroutineA;#0x806AA80
CustomMeteorGraphicsEnd:	
	pop     {r0}
	bx      r0
	.pool

;.org 0806AA80
MeteorGraphicSubroutineA:
	push    {r4,r5,r14}
	mov     r4,r0
	mov     r5,r1
	mov     r0,0xC5
	bl      LongMeteorGraphicBL1;#0x803B4DC
	ldr     r0,=0x0858168C
	mov     r1,0x3
	bl      LongMeteorGraphicBL2;#0x801C8F4
	lsl     r4,r4,0x4
	ldr     r1,=0x08499590
	ldr     r2,[r1]
	mov     r3,0x4
	ldsh    r1,[r2,r3]
	sub     r1,0x8
	sub     r4,r4,r1
	lsl     r5,r5,0x4
	mov     r3,0x6
	ldsh    r1,[r2,r3]
	sub     r1,0x8
	sub     r5,r5,r1
	mov     r1,r4
	mov     r2,r5
	bl      MeteorGraphicSubroutineB;#0x806A6F0
	pop     {r4,r5}
	pop     {r0}
	bx      r0
.pool

LongMeteorGraphicBL1:
	push	{r4,r14}
	lsl	r0,r0,0x10
	asr	r0,r0,0x10
	bl	LongMeteorGraphicBL1SubBL
	pop	{r4}
	pop	{r0}
	bx	r0
	
LongMeteorGraphicBL1SubBL:
	LongBL	r4,0x0803B48C
	
LongMeteorGraphicBL2:
	LongBL	r2,0x0801C8F4

;.org 0x0806A6F0
MeteorGraphicSubroutineB:
	push	{r4-r6,r14}
	mov	r5,r0
	mov	r4,r1
	mov	r6,r2
	ldr	r0,=CustomMeteorBuffer;#0x817B150	;Meteor Graphic to use
	ldr	r0,[r0]
	ldr	r1,=#0x6013940
	mov	r2,#0x80
	lsl	r2,r2,#0x4
	bl	LongMeteorGraphicBL3;#0x8011E54
	
	ldr	r0,=CustomMeteorBuffer;#0x817B950	;Meteor Palette to use
	ldr	r0,[r0,0x4]
	mov	r1,#0x98
	lsl	r1,r1,#0x2
	mov	r2,#0x20
	bl	LongMeteorGraphicBL4;#0x8013618
	;Can Return to original code after here, nothing else is changed from this point.
	ldr	r0,=0x0806A710+1
	bx	r0
	.pool

LongMeteorGraphicBL3:
	LongBL r3,0x08011E54+1
LongMeteorGraphicBL4:
	LongBL r3,0x08013618+1
;Blank Line

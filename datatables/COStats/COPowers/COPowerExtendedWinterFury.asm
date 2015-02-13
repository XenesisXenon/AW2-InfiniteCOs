;COPowerWinterFury.asm

COPowerExtendedWinterFury:
	push	{r4-r6,r14}
	add	sp,-0x14
	ldr	r6,=0x084A0994	;Power Script
	ldr	r1,=0x08112F00
	ldr	r2,=0x08113BC0
	ldr	r3,=CurrentPlayerTurn
	ldrh	r3,[r3]
	mov	r4,0x2
	str	r4,[sp]
	mov	r5,0x0
	str	r5,[sp,0x4]
	mov	r4,0x1
	str	r4,[sp,0x8]
	str	r5,[sp,0xC]
	str	r0,[sp,0x10]
	mov	r0,r6
	bl	LongBLCOPowerExtendedWinterFury;0x08044D70
	add	sp,0x14
	pop	{r4-r6}
	pop	{r0}
	bx	r0	
	.pool	
	
LongBLCOPowerExtendedWinterFury:
;	ldr	r4,=0x08044D70+1
;	bx	r4
;	.pool
	push	{r4-r7,r14}
	mov	r7,r10
	mov	r6,r9
	mov	r5,r8
	push	{r5-r7}
	mov	r8,r0
	mov	r9,r1
	mov	r10,r2
	mov	r5,r3
	ldr	r6,[sp,0x20]
	ldr	r7,[sp,0x24]
	ldr	r1,[sp,0x30]
	ldr	r4,[sp,0x2C]
	lsl	r4,r4,0x18
	lsr	r4,r4,0x18
	ldr	r0,=ScriptExtendedWinterFury
	bl	LongBLCOPowerExtendedWinterFury1
	ldr	r1,=0x08044D94+1
	bx	r1
	.pool

LongBLCOPowerExtendedWinterFury1:
	LongBL	r2,0x0801C95C+1
	
SetTwoTurnBlizzard:
	push	{r14}
	mov	r0,0x1		;This is the Weather Change
	mov	r1,0x2		;This is the Weather Length
	bl	SetWeatherbyPower;0x08035144	;Weather Change Thingo
	pop	{r0}
	bx	r0
	
;Slightly Modified Script to allow extended weather.
.align
ScriptExtendedWinterFury:	
	@@Comm	0x4,0,0x08034F8C+1
	@@Comm	0x2,0,0x08034F7C+1
	@@Comm	0xE,0,0
	@@Comm	0x2,0,0x08044DD0+1
	@@Comm	0x2,0,0x080451C8+1
	@@Comm	0x3,0,0x08045210+1
	@@Comm	0x2,0,0x08044DE0+1
	@@Comm	0x3,0,0x08044E10+1
	@@Comm	0x2,0,0x08044DF8+1
	@@Comm	0x3,0,0x08044F24+1
	@@Comm	0x3,0,0x08045254+1
	@@Comm	0x2,0,0x08045298+1
	@@Comm	0x2,0,0x080452A8+1		;- Sets Mass Damage Weather, CO Power Status
	@@Comm	0x2,0,SetTwoTurnBlizzard+1
	@@Comm	0x1A,0,0x0849BD38
	@@Comm	0xE,0x1,0
	@@Comm	0x0,0,0	
.align	
;Blank Line	

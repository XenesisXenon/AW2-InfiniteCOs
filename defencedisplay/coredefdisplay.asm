;Advance Wars 2 - Display Patch
;Core Code coredefdisplay.asm

.gba
.thumb

FirepowerBarCalculation:
	push {r14}
	mov r2, r1
	ldr r1,=BaseUnitPointer
	ldr r3, [r1]
	mov r1, 0x3C
	mul r1, r0
	add r1, r1, r3
	add r1, 0x10
	ldrb r0, [r1, 0x16]
	sub r1, 0x10
	push {r0}
	ldrb r0, [r1, 0x1D]
	ldrb r1, [r1, 0x1E]
	bl LongBLFirepowerGatherer
	b CommonBarCalculation
	.pool

DefenceBarCalculation:
	push {r14}
	mov r2, r1
	ldr r1,=BaseUnitPointer
	ldr r3, [r1]
	mov r1, 0x3C
	mul r1, r0
	add r1, r1, r3
	add r1, 0x10
	ldrb r0, [r1, 0x17]
	sub r1, 0x10
	push r0
	ldrb r0, [r1, 0x1E]
	cmp r0, 0x1
	blt DefenceLoader
	ldr r0, [sp]
	add r0, 0xA
	str r0, [sp]
DefenceLoader:
	ldrb r0, [r1, 0x1D]
	ldrb r1, [r1, 0x1E]
	bl LongBLDefenceGatherer
	b CommonBarCalculation
	.pool

CommonBarCalculation:
	pop {r1}
	push {r2}
	add r0, r0, r1
	ldr r2,=FirepowerBarsTable
	add r0, 0x1E
	cmp r0, 0x0
	bgt StatBoostNotReached
	mov r0, 0x0
StatBoostNotReached:
	ldrb r1, [r2]
	cmp r0, r1
	bge StatBoostReached
	add r2, 0x2
	b StatBoostNotReached
StatBoostReached:
	ldrb r0, [r2, 0x1]
	pop r2
	pop r1
	bx r1
	.pool

LongBLFirepowerGatherer:
	ldr r3,=0x080430B1
	bx r3
	.pool

LongBLDefenceGatherer:
	ldr r3,=0x08043121
	bx r3
	.pool
	
;This is to Fix the Blink Check wigging out
BlinkCheckDrawBothFix:
	ldr	r5,=0x08499598
	ldr	r1,[r5]
	mov	r2,r9
	lsl	r0,r2,0x4
	sub	r0,r0,r2
	lsl	r4,r0,0x2
	add	r1,r4,r1
	ldrb	r0,[r1,0x1D]
	ldrb	r1,[r1,0x1E]
	mov	r2,r6
	b	0x0808581e
	.pool

FirepowerBarsTable:
	;Each Value is firepower followed by graphic associated
	.byte 105,0xA7,100,0xA6,90,0xA5,80,0xA4,70,0xA3,60,0xA2,50,0xA1,45,0xA0,40,0x9F,30,0x9E,20,0x9B,10,0x9C,0,0x9D,0,0x0

CODossierUnitOrder:
	.halfword 	01,02,00,07
	.halfword	06,05,03,08
	.halfword	10,11,15,00
	.halfword	16,17,19,20
	.halfword	21,22,24,23

;Blank Line
;Pointer Hack Ultra - Core
;phucore.asm

.gba
.thumb



;This makes the code use an alternate table of unit boosts which is tabulated per unit instead of per unit-class. Included in phutable.bin as default AW2 Unit stats. Complete subroutine code, replaces the code at noted offsets in AW2.
.macro PHULoader,input1
@@Baseunitdata equ 0x085D5ABC
@@PHUPointer3 equ COStatsAbilitiesDatatable-0x5C
	push {r4-r7,r14}
	ldr r7,=PHackUltraTable
	ldr r4,=@@Baseunitdata
	mov r3, 0x8
	mul r3, r2
	mov r6, 0xD0
	mov r5, 0x3
	mul r6, r5
	mul r6, r0
	add r6, r3, r6
	lsl r5, r5, 0x2
	mov r3, 0xD0
	lsl r4, r0, 0x6
	add r4, r4, r0
	lsl r4, r4, 0x2
	mul r3, r1
	ldr r0,=@@PHUPointer3
	add r6, r3, r6
	add r7, r6, r7
	mov r0, r2
	bl 0x080432E0
	lsl r0, r0, 0x2
	add r0, r0, r5
	add r0, r0, r4
	ldr r1,=@@PHUPointer3
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0,=0x03003FC0
	ldrb r0, [r0, 0x8]
	cmp r0, 0x0
	bne @@PHUBranch1
	mov r0, 0x0
	b @@PHUBranch2
@@PHUBranch1:
	mov r2, input1
	ldsh r0, [r7, r2]
@@PHUBranch2:
	pop {r4-r7}
	pop {r1}
	bx r1
	.align
	.pool
.endmacro

;Offence
.org 0x080430B0
	PHULoader 0x0

;Defence
.org 0x8043120
	PHULoader 0x2

;Movement
.org 0x08043190
	PHULoader 0x4

;Range
.org 0x08043200
	PHULoader 0x6

;Blank line
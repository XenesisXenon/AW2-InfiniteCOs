;Advance Wars 2 - Common Functions, macros and offsets for BL
;commonfunctions.asm

;Macro for Long Branches
.macro LongBL,register,pointer
	ldr register,=pointer
	bx register
	.pool
.endmacro
;Macro for Graphical/Special Scripting Commands
	.macro	@@Comm,Type,Option,Pointer
		.dh	Type
		.dh	Option
		.dw	Pointer
	.endmacro
	
	.macro	@@CommB,Type,Option,Pointer
		.dw	Pointer
		.dh	Option
		.dh	Type
	.endmacro	

	
.align 4
BranchR0:
	bx r0
	.dh 0
BranchR1:
	bx	r1
	.dh	0
BranchR2:
	bx	r2
	.dh	0
BranchR3:
	bx	r3
	.dh	0
BranchR4:
	bx	r4
	.dh	0
BranchR5:
	bx	r5
	.dh	0
BranchR6:
	bx	r6
	.dh	0
BranchR7:
	bx	r7
	.dh	0
BranchR8:
	bx	r8
	.dh	0
BranchR9:
	bx	r9
	.dh	0
BranchR10:
	bx	r10
	.dh	0
BranchR11:
	bx	r11
	.dh	0
BranchR12:
	bx	r12
	.dh	0
BranchR13:
	bx	r13
	.dh	0
BranchR14:
	bx	r14
	.dh	0

DivisionFunction:
	swi 	0x6
	bx 	r14
	
AltDivisionFunction:	;0x0808BBF8
	LongBL r3, 0x0808BBF8+1
	
ModulusFunction:
	push	{r2-r3,r14}
	mov	r1,1
	bl	DivisionFunction
	mov	r0,r3
	pop	{r2-r3}
	pop	{r1}
	bx	r1
	
SWICpuFastSet:
	swi 	0xC
	bx	r14
	
SWICpuSet:
	swi	0xB
	bx	r14
	
LongBLRNGFunction:
	ldr	r1,=0x080129E0+1
	bx	r1
	.pool
	
LongBLUnitPriceFunction:
	LongBL	r2,0x08042C9C+1
	
LongBLAddFundsToPlayer:
	LongBL	r2,0x08025B58+1
	
LongBLGatherUnitPrice:
	LongBL	r2,0x08042C9C+1
	
LongBLGatherLuckMax:
	LongBL r1, 0x08042E64+1
	
LongBLGatherDefenceTotal:
	;Gathers the CO's Defence Total
	LongBL r1, 0x08042CF8+1	
	
LongBL_Gather_MoveTotal:
	LongBL r3,0x08043190+1
	
LongBL_Gather_RangeTotal:
	LongBL r3,0x08043200+1
	
LongBLGatherCurrentTerrainDefence:
	LongBL r1, 0x08043304+1	
	
LongBL_Player_AddPowerCharge:
	LongBL	r2,0x80440E0+1

;Input of CO Id in r0, Power State in R1, offset in r2
;Output in r0
GatherCOAbility:
	push	{r3}
	mov	r3,0x82
	lsl	r3,r3,0x1
	mul	r0,r3
	mov	r3,0x44
	cmp	r2,0x38
	bge	@GatherCOAbility_Dynamic	;Does a quick check
	
	mov	r1,0	;Clears Power if calling a non-power state offset
	
@GatherCOAbility_Dynamic:	
	mul	r1,r3
	add	r0,r0,r1
	ldr	r1,=COStatsAbilitiesDatatable
	add	r1,r0,r1
	ldsh	r0,[r1,r2]
	pop	{r3}
	bx	r14
	.pool
	
GatherCOAbilityPointer:
Gather_COAbility_Word:
	push	{r3}
	mov	r3,0x82
	lsl	r3,r3,0x1
	mul	r0,r3
	mov	r3,0x44
	cmp	r2,0x38
	bge	@GatherCOAbilityPointer_Dynamic	;Does a quick check
	
	mov	r1,0	;Clears Power if calling a non-power state offset
	
@GatherCOAbilityPointer_Dynamic:	
	mul	r1,r3
	add	r0,r0,r1
	ldr	r1,=COStatsAbilitiesDatatable
	add	r1,r0,r1
	ldr	r0,[r1,r2]
	pop	{r3}
	bx	r14
	.pool	

;Input of Unit ID in r0, Offset in r1, length in r2	
GatherUnitAbility:
	push	{r3}
	mov	r3,0x5C
	mul	r0,r3
	ldr	r3,=0x085D5ABC
	add	r0,r0,r3
	cmp	r2,0x1
	bne	GatherUnitAbilityNotByte
	ldrb	r0,[r0,r1]
	b	GatherUnitAbilityEnd
	
GatherUnitAbilityNotByte:
	cmp	r2,0x2
	bne	GatherUnitAbilityNotHalfWord
	ldrh	r0,[r0,r1]
	b	GatherUnitAbilityEnd

GatherUnitAbilityNotHalfWord:
	ldr	r0,[r0,r1]
	b	GatherUnitAbilityEnd
	
GatherUnitAbilityEnd:
	pop	{r3}
	bx	r14
	.pool
	
;Input of Song or Sound effect ID in r0.
PlaySong:
	LongBL	r1,0x0803B4DD

Initiate_Object_OAM:
	push	{r4,r5,r14}
	ldr	r5,=0x0801F150+1+2
	bx	r5
	.pool
	
;Appends an item to the OAM list so it will be drawn
;Input of r0 = ID
Queue_Object_OAM:
	push	{r4-r7,r14}
	ldr	r5,=0x0801F234+1+2
	bx	r5
	.pool
	
;Input of r0-r3
;Input of sp+0x0
Draw_Object_OAM:
	push	{r4-r7,r14}
	ldr	r7,=0x0801F34C+1+2
	bx	r7
	.pool

;Input of r0 = OAM HW 1, r1 = OAM HW 2 pos, r2 = Pointer, r3 = OAM HW 3
;Secondary input of sp+0x0 = RAM (0x0201CC50), sp+0x4 = 0x0
Draw_Object_StandardBox:
	push	{r4-r7,r14}
	ldr	r7,=0x0801A36A+1
	bx	r7
	.pool

	
;Blank Line
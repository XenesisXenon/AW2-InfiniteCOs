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

;Division BL Subroutine
DivisionFunction:
	swi 	0x6
	bx 	r14
	
AltDivisionFunction:	;0x0808BBF8
	LongBL r3, 0x0808BBF8+1
	
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
	
LongBLGatherCurrentTerrainDefence:
	LongBL r1, 0x08043304+1		

;Input of CO Id in r0, Power State in R1, offset in r2
;Output in r0
GatherCOAbility:
	push	{r3}
	mov	r3,0x82
	lsl	r3,r3,0x1
	mul	r0,r3
	mov	r3,0x44
	mul	r1,r3
	add	r0,r0,r1
	ldr	r1,=COStatsAbilitiesDatatable
	add	r1,r0,r1
	ldrh	r0,[r1,r2]
	pop	{r3}
	bx	r14
	.pool
	
GatherCOAbilityPointer:
	push	{r3}
	mov	r3,0x82
	lsl	r3,r3,0x1
	mul	r0,r3
	mov	r3,0x44
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
	
;Blank Line
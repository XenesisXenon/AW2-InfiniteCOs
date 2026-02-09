;coreunitlist.asm
;Current order of Ops is wrong.

;Checks if a Unit is CO-Specific
UnitListLoaderCOSpecificUnits:
	ldrb	r0,[r5,0xA]
	mov	r1,0x1
	and	r0,r1
	cmp	r0,0x0
	beq	UnitListLoaderCOSpecificUnitFalse

	ldr	r0,=CurrentPlayerTurn
	ldrh	r0,[r0]
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r0,r0,r1
	ldrb	r0,[r0,0x1D]
	ldrb	r1,[r5,0xB]
	sub	r1,1
	cmp	r0,r1
	bne	UnitListLoaderSpecialTypeFalse
	
UnitListLoaderGenericUnit:	;Build The Entry
	ldrb	r0,[r5]
	ldrb	r1,[r5,0x1]
	ldrb	r2,[r5,0x2]
	bl	LongUnitListUnitProcessor
	ldr	r4,=0x08019746+1
	bx	r4
	
UnitListLoaderCOSpecificUnitFalse:
;Checks if a Unit Entry is Randomised
	ldrb	r0,[r5,0xA]
	mov	r1,0x2
	and	r0,r1
	cmp	r0,0x0
	beq	UnitListLoaderGenericUnit;UnitListLoaderSpecialTypeFalse
	
	bl	LongBLRNGFunction
	
	ldrb	r1,[r5,0xB]
	ldr	r2,=UnitListRandomList
	lsl	r1,r1,0x2
	add	r2,r1,r2
	ldr	r2,[r2]
	ldrb	r1,[r2]
	cmp	r1,0x0
	beq	UnitListLoaderSpecialTypeFalse
	
	bl	DivisionFunction
	
	ldrb	r2,[r2,r1]
	ldrb	r0,[r5]
	ldrb	r1,[r5,0x1]
	bl	LongUnitListUnitProcessor
	ldr	r4,=0x08019746+1
	bx	r4	
	
UnitListLoaderSpecialTypeFalse:	;Null the Entry
	add	r5,0xC
	ldr	r2,=0x080197E2+1
	bx	r2
	.pool
	
LongUnitListUnitProcessor:
	push	{r4-r7,r14}
	LongBl	r7,0x08025C5E+1
	


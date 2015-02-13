;hookincomemodifier.asm
;Allows modification to Income via CO abilities. This adds a per-property bonus

.org 0x08026C6C
	push	{r2-r3}
	lsl	r0,r0,0x18
	lsr	r0,r0,0x18
	sub	r0,0x6
	cmp	r0,0xE
	bhi	PropertyIncomeCalculatorNoMoney;0x08026CCC
	ldr	r1,=TerrainPropertyIncomeTable
	ldrb	r0,[r1,r0]
	cmp	r0,0x0
	beq	PropertyIncomeCalculatorNoMoney
	;Funds-based income
	ldr 	r0,=CurrentGameOptions
	ldr	r0,[r0,0x28]
	;Add CO-Special Income
	ldrb	r1,[r4,0x1D]
	mov	r2,0x82
	lsl	r2,r2,0x1
	mul	r1,r2
	ldr	r2,=COStatsAbilitiesDatatable
	add	r1,r1,r2
	add	r1,0x60
	ldrh	r1,[r1]
	add	r0,r0,r1	
	b	PropertyIncomeCalculatorEnd;0x08026CCE
	.pool
	
PropertyIncomeCalculatorNoMoney:	
	mov	r0,0x0
PropertyIncomeCalculatorEnd:
	pop	{r2-r3}
	bx	r14
	
;Terrain Income Table
TerrainPropertyIncomeTable:
	;City
	.db	1
	;Sea
	.db	0
	;HQ
	.db	1
	;N/A
	.db	0
	;Airport
	.db	1
	;Port
	.db	1
	;Bridge
	.db	0
	;Shoal
	.db	0
	;Base
	.db	1
	;Pipeline
	.db	0
	;Pipe Seam
	.db	0
	;Silo
	.db	0
	;12
	.db	0
	;Reef
	.db	0
	;Lab
	.db	1
	
;This adds a flat income boost
.org 0x08026EF6
	ldr	r0,=AddFlatIncomeBoost+1
	bx	r0
	.pool	
	
;Blank line	

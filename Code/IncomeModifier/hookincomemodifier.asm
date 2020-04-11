;hookincomemodifier.asm
;Allows modification to Income via CO abilities. This adds a per-property bonus
;Modified to take input of the 'Player owned'

.org 0x08026C6C
	push	{r2-r4,r14}
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
	
	ldr	r2,=PropertyIncomeCalculator_Forces+1	;Force Ranks
	bx	r2
PropertyIncomeCalculator_Forces_Return:
	b	PropertyIncomeCalculatorEnd;0x08026CCE
	
PropertyIncomeCalculatorNoMoney:	
	mov	r0,0x0
PropertyIncomeCalculatorEnd:
	pop	{r2-r4}
	pop	{r1}
	bx	r1
	.pool
	
;This adds a flat income boost
.org 0x08026EF6
	ldr	r0,=AddFlatIncomeBoost+1
	bx	r0
	.pool	

;This fixes the R-info screen

	
;Blank line	

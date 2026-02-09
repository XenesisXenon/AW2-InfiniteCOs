;Uses r0 & r1
;Will check p1 to see how many units have been lost as an absolute value
;Returns 1 if greater than or equal to value, 0 if less than
;Edit UnitValue to change the value.
	@UnitValue equ 5
Campaign_Custom_UnitLostCheck:
	mov	r0,@UnitValue
	ldr	r1,=0x020232C0+0x3B ;Player 1 RAM
	ldrb	r1,[r1] ;Player Unit Loss Count
	cmp	r1,r0
	blt	@Branch_One
	mov	r0, 1
	b	@Branch_Two
@Branch_One:
	mov	r0,0
@Branch_Two:
	bx	r14
	.pool

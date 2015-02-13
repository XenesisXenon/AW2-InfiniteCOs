;hookrepairexpansion
;Adds the ability for enhanced repairs.

.org 0x0802A0B2
	ldr	r0,=RepairExpansionOne+1
	bx	r0
	.pool
	
.org 0x0802A0BC
RepairExpansionReturnOne:
	mov	r0,r4
	add	r1,2
	
.org 0x0802A122
	mov	r1,r10
	ldr	r0,=RepairExpansionTwo+1
	bx	r0
	.pool
	
.org 0x0802A12E
RepairExpansionReturnTwo:
	mov	r0,r4
	add	r1,2
;Blank Line		

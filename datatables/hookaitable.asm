;hookaitable.asm
;Allows expansion to the list so that more AI tables can be added for Vs mode
	
;Modification to allow for expansion.	
.org 0x08061826
	ldrb	r2,[r2,0x1D]
	lsl	r2,r2,0x2
	ldr	r1,=AIRulesVsTable
	add	r1,r1,r2
	sub	r2,r6,0x1
	lsl	r2,r2,0x0
	add	r1,r1,r2	;Add Filter. Order: LAS,L,LA,LS
	ldrb	r2,[r1]
	
.org 0x0806185C
	.pool	

.org 0x080617F0
	.dw	AIRulesVsTable
	
.org 0x08061A38
	.dw	AIRulesVsTable

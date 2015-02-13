;hookmapcases.asm
;Enables the Campaign Map Case in the Vs Menu

.org 0x080865A8
	mov	r0,0x1
.org 0x080864a0
	cmp	r0,0x0
	

;aiactivatealways.asm
;Activates a COP whenever it can

.org 0x0805C1C0
AIActivateAlways:
	mov	r0,0x1
	bx	r14
;Blank Line	

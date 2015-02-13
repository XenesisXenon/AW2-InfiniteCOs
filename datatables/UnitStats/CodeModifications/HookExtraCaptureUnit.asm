;hookextraunitcapture.asm
;Allows an extra ID Unit to capture property

.org 0x08041534
	cmp r0, ExtraCapturingPropertyUnit
	beq 0x0804154C
	sub r0, 0x1
	cmp r0, 0x1

;Also allows an extra ID unit to launch Silos
;Does not have to be the same
.org 0x08041770
	cmp r0, ExtraUsingSiloUnit
	beq 0x08041788
	sub r0, 0x1
	cmp r0, 0x1
;Blank Line	

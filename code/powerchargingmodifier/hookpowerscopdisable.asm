;hookpowerscopdisable.asm
;Adds Support to Disable the SCOP as well as the COP

;Only needs to modify which script is hooked.
.org 0x0849AB24
	.dw	MenuCommandShowSCOP+1

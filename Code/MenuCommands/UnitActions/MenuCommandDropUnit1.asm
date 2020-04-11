;MenuCommandDropUnit1.asm
;This is the entry for the "Drop Unit" function
	;0x20 in Length
	
	;Is this an Actual Menu Command? (0xFF if False)
	.dw	0x1D
	
	;Visbility Check Subroutine (1 = False, 0 = True)
	.dw	0x0802CBC9
	
	;Unknown 2
	.dw	0
	
	;Unknown 3
	.dw	0
	
	;Unknown 4
	.dw	0
	
	;Code to Execute upon Selection
	.dw	0x0802D169
	
	;Higher Level Menu?
	.dw	0x08019E45
	
	;Text String
	.dw	0x922
	

;Blank Line

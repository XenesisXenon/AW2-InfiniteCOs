;MenuCommandLoadUnit.asm
;This is the entry for the "Load Unit" function
	;0x20 in Length
	
	;Is this an Actual Menu Command? (0xFF if False)
	.dw	0x1C
	
	;Visbility Check Subroutine (1 = False, 0 = True)
	.dw	0x0802CBA1
	
	;Unknown 2
	.dw	0
	
	;Unknown 3
	.dw	0
	
	;Unknown 4
	.dw	0
	
	;Code to Execute upon Selection
	.dw	0x0802D0B5
	
	;Higher Level Menu?
	.dw	0x08019E45
	
	;Text String
	.dw	0x921
	

;Blank Line

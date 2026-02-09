;MenuCommandCO.asm
;This is the entry for the "CO" function
	;0x20 in Length
	
	;Is this an Actual Menu Command? (0xFF if False)
	.dw	0x27
	
	;Visbility Check Subroutine (1 = False, 0 = True)
	.dw	0x0802C661
	
	;Unknown 2
	.dw	0
	
	;Unknown 3
	.dw	0
	
	;Unknown 4
	.dw	0
	
	;Code to Execute upon Selection
	.dw	0x0802CD15
	
	;Higher Level Menu?
	.dw	0x0802C5AD
	
	;Text String
	.dw	0x909
	

;Blank Line

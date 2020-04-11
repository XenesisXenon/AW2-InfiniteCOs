;MenuCommandDebugPowerOff.asm
;This is the entry for the "Power" function
	;0x20 in Length
	
	;Is this an Actual Menu Command? (0xFF if False)
	.dw	0x1
	
	;Visbility Check Subroutine (1 = False, 0 = True)
	.dw	VisibilityCheckAlways+1
	
	;Unknown 2
	.dw	0
	
	;Unknown 3
	.dw	0
	
	;Unknown 4
	.dw	0
	
	;Code to Execute upon Selection
	.dw	OnSelectDebugPowerOff+1
	
	;Higher Level Menu?
	.dw	0x0802C5D5	;Main In-Game Menu
	
	;Text String
	.dw	MenuCommands_StringIDBase
	

;Blank Line

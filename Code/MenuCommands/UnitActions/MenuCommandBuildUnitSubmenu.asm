;MenuCommandBuildUnitSubmenu.asm
;This is the entry for the "Build Unit" Submenu function
	;0x20 in Length
	
	;Is this an Actual Menu Command? (0xFF if False)
	.dw	0x18
	
	;Visbility Check Subroutine (1 = False, 0 = True)
	.dw	VisibilityCheckUnitActionBuildSubmenu+1
	
	;Unknown 2
	.dw	0
	
	;Unknown 3
	.dw	0
	
	;Unknown 4
	.dw	0
	
	;Code to Execute upon Selection
	.dw	UnitActionBuildUnitSubmenu+1
	
	;Higher Level Menu?
	.dw	0x08019E45
	
	;Text String
	.dw	3343
	

;Blank Line

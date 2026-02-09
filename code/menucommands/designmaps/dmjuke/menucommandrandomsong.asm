;menucommanddmrandomsong.asm
;Entry for the Menu Command "Random Song"
;Custom Menu Entry to create 'DM Jukebox'
	;0x20 in Length
	
	;Is this an Actual Menu Command? (0xFF if False)
	.dw	0x0
	
	;Visbility Check Subroutine (1 = False, 0 = True)
	.dw	0x08004839
	
	;Unknown 2
	.dw	0
	
	;Unknown 3
	.dw	0x0802D44D
	
	;Unknown 4
	.dw	0
	
	;Code to Execute upon Selection
	.dw	MenuOnSelectDMJukeRandomSong+1
	
	;Higher Level Menu?
	.dw	0x0800483D
	
	;Text String
	.dw	3335
;Blank Line

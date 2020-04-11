;hookmenucommands.asm
;Controls the Player Input Menu System

;	.include MenuCommands/MainGameMenu.asm
;Design Maps Jukebox

	MenuSystemEndMenuList equ	0xFF

.org 0x08004CDC
;	.dw	DesignMapsMenuList
	
.org 0x0802D59C
	.dw	UnitActionsMenuList
	
.org 0x0802D49C
	.dw	MainGameMenuList
	

.relativeinclude on
;Various Menu items recreated/disassembled
	.include "./MainGame/OnSelect_Power.asm"
	.include "./MainGame/OnSelect_Super.asm"
.relativeinclude off
;Blank Line

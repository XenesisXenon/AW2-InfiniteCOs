;maingamemenu.asm"
;This is the top level menu for the main game field

	.relativeinclude on
MainGameMenuList:
	.include "MainGame/MenuCommandCO.asm"
	.include "MainGame/MenuCommandDebug.asm"
	.include "MainGame/MenuCommandIntel.asm"
	.include "MainGame/MenuCommandPower.asm"
	.include "MainGame/MenuCommandSuper.asm"
	.include "MainGame/MenuCommandOptions.asm"
	.include "MainGame/MenuCommandSave.asm"
	.include "MainGame/MenuCommandSwap.asm"
	.include "MainGame/MenuCommandEnd.asm"
	.dw	MenuSystemEndMenuList
	.relativeinclude off

;Blank Line

;maingamemenu.asm"
;This is the top level menu for the main game field

	.relativeinclude on
MainGameMenuList:
	.include "maingame/menucommandco.asm"
	.include "maingame/menucommanddebug.asm"
	.include "maingame/menucommandintel.asm"
	.include "maingame/menucommandpower.asm"
	.include "maingame/menucommandsuper.asm"
	.include "maingame/menucommandoptions.asm"
	.include "maingame/menucommandsave.asm"
	.include "maingame/menucommandswap.asm"
	.include "maingame/menucommandend.asm"
	.dw	MenuSystemEndMenuList
	.relativeinclude off

;Blank Line

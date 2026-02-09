;DebugMenu.asm"
;Adds some cheaty debug functions for testing.

	.relativeinclude on
MenuDebugSubmenuList:
	.include "maingame/debug/menucommanddebugcopower.asm"
	.include "maingame/debug/menucommanddebugscopower.asm"
	.include "maingame/debug/menucommanddebugpoweroff.asm"
	.include "maingame/debug/menucommanddebugmaxfunds.asm"
	.include "maingame/debug/menucommanddebugrefreshunits.asm"
	.include "maingame/debug/menucommanddebugrepairunits.asm"
	.include "maingame/debug/menucommanddebugnextco.asm"
	.include "maingame/debug/menucommanddebugpreviousco.asm"
	.include "maingame/debug/menucommanddebugruncorescript.asm"
	.dw	MenuSystemEndMenuList
	.relativeinclude off

;Blank Line	

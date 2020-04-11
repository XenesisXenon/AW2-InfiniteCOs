;DebugMenu.asm"
;Adds some cheaty debug functions for testing.

	.relativeinclude on
MenuDebugSubmenuList:
	.include "MainGame/Debug/MenuCommandDebugCOPower.asm"
	.include "MainGame/Debug/MenuCommandDebugSCOPower.asm"
	.include "MainGame/Debug/MenuCommandDebugPowerOff.asm"
	.include "MainGame/Debug/MenuCommandDebugMaxFunds.asm"
	.include "MainGame/Debug/MenuCommandDebugRefreshUnits.asm"
	.include "MainGame/Debug/MenuCommandDebugRepairUnits.asm"
	.include "MainGame/Debug/MenuCommandDebugNextCO.asm"
	.include "MainGame/Debug/MenuCommandDebugPreviousCO.asm"
	.include "MainGame/Debug/MenuCommandDebugRunCoreScript.asm"
	.dw	MenuSystemEndMenuList
	.relativeinclude off

;Blank Line	

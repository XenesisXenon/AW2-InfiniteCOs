;menuunitactions.asm"
;Menu that controls what actions a unit can perform

	.relativeinclude on
UnitActionsMenuList:
;Original 0x0849AE28
	.include "UnitActions/MenuCommandFire.asm"
	.include "UnitActions/MenuCommandFireX.asm"
	.include "UnitActions/MenuCommandCapt.asm"
	.include "UnitActions/MenuCommandCaptStar.asm"
;	.include "UnitActions/MenuCommandBuildUnitAWP.asm"
;	.include "UnitActions/MenuCommandBuildUnitSubmenu.asm"
	.include "UnitActions/MenuCommandLaunchSilo.asm"
	.include "UnitActions/MenuCommandLoadUnit.asm"
	.include "UnitActions/MenuCommandDropUnit1.asm"
	.include "UnitActions/MenuCommandDropUnit2.asm"
	.include "UnitActions/MenuCommandJoinUnit.asm"
	.include "UnitActions/MenuCommandSupply.asm"
	.include "UnitActions/MenuCommandWait.asm"
	.include "UnitActions/MenuCommandDive.asm"
	.include "UnitActions/MenuCommandRise.asm"

	.dw	MenuSystemEndMenuList
	.relativeinclude off

;Blank Line

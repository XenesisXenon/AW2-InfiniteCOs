;menuunitactions.asm"
;Menu that controls what actions a unit can perform

	.relativeinclude on
UnitActionsMenuList:
;Original 0x0849AE28
	.include "unitactions/menucommandfire.asm"
	.include "unitactions/menucommandfirex.asm"
	.include "unitactions/menucommandcapt.asm"
	.include "unitactions/menucommandcaptstar.asm"
;	.include "unitactions/menucommandbuildunitawp.asm"
;	.include "unitactions/menucommandbuildunitsubmenu.asm"
	.include "unitactions/menucommandlaunchsilo.asm"
	.include "unitactions/menucommandloadunit.asm"
	.include "unitactions/menucommanddropunit1.asm"
	.include "unitactions/menucommanddropunit2.asm"
	.include "unitactions/menucommandjoinunit.asm"
	.include "unitactions/menucommandsupply.asm"
	.include "unitactions/menucommandwait.asm"
	.include "unitactions/menucommanddive.asm"
	.include "unitactions/menucommandrise.asm"

	.dw	MenuSystemEndMenuList
	.relativeinclude off

;Blank Line

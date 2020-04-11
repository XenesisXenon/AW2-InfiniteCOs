;coremenucommands.asm"

;Dynamic Map ID:

	.align 4
;	.include "Code/MenuCommands/MenuDesignMaps.asm"
;	.include "Code/MenuCommands/MenuDesignMapsJukebox.asm"
	.include "Code/MenuCommands/MenuUnitActions.asm"
;	.include "Code/MenuCommands/MenuUnitActionBuildUnits.asm"
	.include "Code/MenuCommands/MenuMainGame.asm"
	.include "Code/MenuCommands/MenuDebug.asm"
	
	.align 4
;	.include "Code/MenuCommands/SubMenuCode/DesignMapsJukeboxSubmenu.asm"
;	.include "Code/MenuCommands/SubmenuCode/UnitActionBuildUnitSubmenu.asm"
	.include "Code/MenuCommands/SubmenuCode/MenuActionDebugSubmenu.asm"
	
;	.include "Code/MenuCommands/DesignMaps/DMJuke/OnSelectMenuNextSong.asm"
;	.include "Code/MenuCommands/DesignMaps/DMJuke/OnSelectMenuPreviousSong.asm"
;	.include "Code/MenuCommands/DesignMaps/DMJuke/OnSelectMenuRandomSong.asm"
;	.include "Code/MenuCommands/DesignMaps/DMJuke/OnSelectNowPlaying.asm"
	
;	.include "Code/MenuCommands/UnitActions/VisibilityCheckBuildUnitSubmenuAWP.asm"
;	.include "Code/MenuCommands/UnitActions/BuildUnit/OnSelectBuildUnit1AWP.asm"
;	.include "Code/MenuCommands/UnitActions/BuildUnit/OnSelectBuildUnit2AWP.asm"
;	.include "Code/MenuCommands/UnitActions/BuildUnit/OnSelectBuildUnit3AWP.asm"
;	.include "Code/MenuCommands/UnitActions/BuildUnit/OnSelectBuildUnit4AWP.asm"
;	.include "Code/MenuCommands/UnitActions/BuildUnit/VisibilityCheckBuildUnit1AWP.asm"
;	.include "Code/MenuCommands/UnitActions/BuildUnit/VisibilityCheckBuildUnit2AWP.asm"
;	.include "Code/MenuCommands/UnitActions/BuildUnit/VisibilityCheckBuildUnit3AWP.asm"
;	.include "Code/MenuCommands/UnitActions/BuildUnit/VisibilityCheckBuildUnit4AWP.asm"
	
	.include "Code/MenuCommands/MainGame/OnSelectSwap.asm"
	.include "Code/MenuCommands/MainGame/VisibilityCheck_SecondCO.asm"
	.include "Code/MenuCommands/MainGame/VisibilityCheck_Super.asm"

	.include "Code/MenuCommands/MainGame/Debug/OnSelectDebugMaxFunds.asm"
	.include "Code/MenuCommands/MainGame/Debug/OnSelectDebugNextCO.asm"
	.include "Code/MenuCommands/MainGame/Debug/OnSelectDebugPreviousCO.asm"
	.include "Code/MenuCommands/MainGame/Debug/OnSelectDebugPowerOff.asm"
	.include "Code/MenuCommands/MainGame/Debug/OnSelectDebugRefreshUnits.asm"
	.include "Code/MenuCommands/MainGame/Debug/OnSelectDebugRepairUnits.asm"
	.include "Code/MenuCommands/MainGame/Debug/OnSelectDebugRunCoreScript.asm"
	.include "Code/MenuCommands/MainGame/Debug/VisibilityCheckAlways.asm"
	.include "Code/MenuCommands/MainGame/Debug/VisibilityCheckNever.asm"
	.include "Code/MenuCommands/MainGame/Debug/VisibilityCheckXenesis.asm"
	
	.align 4
MenuFunctionCommon:
	push	{r14}
	bl	LongBLMenuFunction1
	bl	LongBLMenuFunction2
	bl	LongBLMenuFunction3
	bl	LongBLMenuFunction4
	bl	LongBLMenuFunction5
	pop	{r1}
	bx	r1
	

LongBLMenuFunction1:
	LongBL r1,0x08034F48+1
LongBLMenuFunction2:
	LongBL r0,0x0801A168+1
LongBLMenuFunction3:
	LongBL r1,0x0802C57C+1
LongBLMenuFunction4:
	LongBL r0,0x080424FC+1
LongBLMenuFunction5:
	LongBL r1,0x0802C594+1

;Required to Load a Submenu	
LongMenuLoadFunctionA:
	LongBL	r0,0x0801A614+1
LongMenuLoadFunctionB:
	LongBL	r0,0x0801A168+1
LongMenuLoadFunctionC:
	LongBL	r0,0x08024268+1
	

;blank line

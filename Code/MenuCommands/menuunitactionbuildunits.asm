;menuunitactionbuildunits.asm

	.relativeinclude on
UnitActionBuildUnitMenuList:
	.include	UnitActions/BuildUnit/MenuCommandBuildUnit1AWP.asm
	.include	UnitActions/BuildUnit/MenuCommandBuildUnit2AWP.asm
	.include	UnitActions/BuildUnit/MenuCommandBuildUnit3AWP.asm
	.include	UnitActions/BuildUnit/MenuCommandBuildUnit4AWP.asm
	.dw	MenuSystemEndMenuList
	.relativeinclude off

;Blank Line

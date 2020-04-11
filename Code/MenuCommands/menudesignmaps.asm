;coredesignmapsmenu.asm

	.relativeinclude on
DesignMapsMenuList:
	.include DesignMaps/MenuCommandFile.asm
	.include DesignMaps/MenuCommandHelp.asm
	.include DesignMaps/MenuCommandIntel.asm
	.include DesignMaps/MenuCommandFill.asm
	.include DesignMaps/MenuCommandMusic.asm
	.include DesignMaps/MenuCommandEnd.asm
	.dw	MenuSystemEndMenuList
	.relativeinclude off

;Blank Line

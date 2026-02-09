;coredesignmapsmenujukebox.asm

.align 4
	.relativeinclude on
DesignMapsJukeboxMenuList:
	.include DesignMaps/DMJuke/MenuCommandNowPlaying.asm
	.include DesignMaps/DMJuke/MenuCommandDMMusicOn.asm
	.include DesignMaps/DMJuke/MenuCommandDMMusicOff.asm
	.include DesignMaps/DMJuke/MenuCommandNextSong.asm
	.include DesignMaps/DMJuke/MenuCommandPreviousSong.asm
	.include DesignMaps/DMJuke/MenuCommandRandomSong.asm
	.dw	MenuSystemEndMenuList
	.relativeinclude off

;Blank Line

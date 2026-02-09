; This song was ripped from: fe7-original.gba
; Song offset: 0xADF5A0
SFX_FE7_WarpEndHeader:
	.word 0x00140001
	.word SFX_WarpEndTable
	.word SFX_WarpEndTrack00

	.include "music/fe7_sfx/sfx_warpend-data.asm"

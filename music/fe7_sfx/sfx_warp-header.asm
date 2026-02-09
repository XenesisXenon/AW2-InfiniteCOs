; This song was ripped from: fe7-original.gba
; Song offset: 0xADF584
SFX_FE7_WarpHeader:
	.word 0x001e0001
	.word SFX_WarpTable
	.word SFX_WarpTrack00

	.include "music/fe7_sfx/sfx_warp-data.asm"

	.include "samples/fe7_music/samples/winningroad127/winningroad127-data.asm"

WinningRoad127DrumkitOffset:
	.include "samples/fe7_music/samples/winningroad127/winningroad127-table.asm"
	WinningRoad127Entry equ 0x00000080,WinningRoad127DrumkitOffset,0x00000000

; blank line
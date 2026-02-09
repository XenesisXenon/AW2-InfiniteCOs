;Advance Wars 2 - AW Infinite COs Complete Build
;main.asm

.open "aw2-original.gba", "aw2-infinite.gba", 0x08000000
.gba
.thumb
	;Fixed Location
	.include "main-hook.asm"
	.include "main-tablefixed.asm"
	.include "main-eventfixed.asm"
	
	;Floating Location
.org 0x08618000
Anchor_Start:
	.include "main-code.asm"
Anchor_EndOfCode:
	.include "main-table.asm"
Anchor_EndOfTable:
	.include "main-event.asm"
Anchor_EndOfEvent:
	.include "main-generated.asm"
	
	;Script-Generated Tables
	.include "main-co.asm"
	.include "main-unit.asm"
	.include "main-map.asm"

.org 0x08800000
	.include "main-music.asm"
Anchor_EndOfMusic:

.close

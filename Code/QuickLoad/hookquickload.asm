;hookquickload.asm
;Modifies the timers to allow quick loading of the main menu

;Check for how long has passed for the intro movie
.org 0x0806756C
	b	0x08067574
	
;Check to allow A-Button presses for the Title Screen	
.org 0x0806C9FA
	nop

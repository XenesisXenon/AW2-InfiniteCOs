; Original offset: 0x084b1da8
C21_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C21_5_Event_0;0x084b1980
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C21_5_Event_1;0x084b1bb0
	Trigger_EndEvent

; blank line
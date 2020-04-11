; Original offset: 0x084b3350
C24_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C24_5_Event_0;0x084b2ff8
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C24_5_Event_1;0x084b31f8
	Trigger_EndEvent

; blank line
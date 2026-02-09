; Original offset: 0x084b1730
C20_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C20_5_Event_0;0x084b12d8
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C20_5_Event_1;0x084b15d8
	Trigger_EndEvent

; blank line
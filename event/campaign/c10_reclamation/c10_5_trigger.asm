; Original offset: 0x084acbd0
C10_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C10_5_Event_0;0x084ac818
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C10_5_Event_1;0x084ac9a8
	Trigger_EndEvent

; blank line
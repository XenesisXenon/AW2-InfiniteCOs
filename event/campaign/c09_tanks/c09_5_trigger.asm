; Original offset: 0x084ac608
C09_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C09_5_Event_0;0x084ac2e0
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C09_5_Event_1;0x084ac4d0
	Trigger_EndEvent

; blank line
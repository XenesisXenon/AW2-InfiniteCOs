; Original offset: 0x084ab0e8
C41_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0x69,C41_5_Event_0;0x084aac80
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C41_5_Event_1;0x084aaf90
	Trigger_EndEvent

; blank line
; Original offset: 0x084aa960
C40_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0x65,C40_5_Event_0;0x084aa678
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C40_5_Event_1;0x084aa7f8
	Trigger_EndEvent

; blank line
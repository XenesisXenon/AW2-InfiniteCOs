; Original offset: 0x084aa518
C39_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C39_5_Event_0;0x084aa1f0
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C39_5_Event_1;0x084aa410
	Trigger_EndEvent

; blank line
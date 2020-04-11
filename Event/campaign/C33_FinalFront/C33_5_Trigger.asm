; Original offset: 0x084b9ec0
C33_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C33_5_Event_0;0x084b7ca8
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C33_5_Event_1;0x084b99a8
	Trigger_EndEvent

; blank line
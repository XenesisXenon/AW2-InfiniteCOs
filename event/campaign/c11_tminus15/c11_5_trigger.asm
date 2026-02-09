; Original offset: 0x084ad4a8
C11_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C11_5_Event_0;0x084ad070
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C11_5_Event_1;0x084ad2e0
	Trigger_EndEvent

; blank line
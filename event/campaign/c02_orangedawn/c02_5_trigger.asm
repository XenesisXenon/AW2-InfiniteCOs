; Original offset: 0x084a3648
C02_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C02_5_Event_0;0x084a3110
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C02_5_Event_1;0x084a3430
	Trigger_EndEvent

; blank line
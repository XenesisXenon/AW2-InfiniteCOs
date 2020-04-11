; Original offset: 0x084af7d0
C16_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C16_5_Event_0;0x084af428
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C16_5_Event_1;0x084af598
	Trigger_EndEvent

; blank line
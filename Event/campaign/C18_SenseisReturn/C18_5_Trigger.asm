; Original offset: 0x084b0580
C18_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C18_5_Event_0;0x084b00d8
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C18_5_Event_1;0x084b0368
	Trigger_EndEvent

; blank line
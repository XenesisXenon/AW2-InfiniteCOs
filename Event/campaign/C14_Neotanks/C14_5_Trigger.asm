; Original offset: 0x084ae860
C14_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0x66,C14_5_Event_0;0x084ae638
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C14_5_Event_1;0x084ae708
	Trigger_EndEvent

; blank line
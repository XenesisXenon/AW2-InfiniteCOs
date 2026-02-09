; Original offset: 0x084b5028
C28_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C28_5_Event_0;0x084b4c40
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C28_5_Event_1;0x084b4e60
	Trigger_EndEvent

; blank line
; Original offset: 0x084adc80
C12_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C12_5_Event_0;0x084ad968
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C12_5_Event_1;0x084adb18
	Trigger_EndEvent

; blank line
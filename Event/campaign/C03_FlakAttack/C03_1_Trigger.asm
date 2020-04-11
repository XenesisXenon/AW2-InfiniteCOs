; Original offset: 0x084a4560
C03_1_Trigger:
	Trigger_Time		PlayerOne,0
	Trigger_ASMCheckTrue	0x080745a9
	Trigger_ASMCheckFalse	0x08074599
	Trigger_SetFlag		0x9f,C03_1_Event_0;0x084a3ae8
	Trigger_Time		PlayerOne,0
	Trigger_ASMCheckTrue	0x08074599
	Trigger_SetFlag		0x9e,C03_1_Event_1;0x084a3e28
	Trigger_Time		PlayerOne,1
	Trigger_SetFlag		0xff,C03_1_Event_2;0x084a37a8
	Trigger_Time		PlayerTwo,1
	Trigger_SetFlag		0xff,C03_1_Event_3;0x084a3b98
	Trigger_EndEvent

; blank line
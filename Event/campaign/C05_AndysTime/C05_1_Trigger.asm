; Original offset: 0x084a6620
C05_1_Trigger:
	Trigger_Time	PlayerOne,0
	Trigger_ASMCheckTrue	0x080745a9
	Trigger_ASMCheckFalse		0x08074599
	Trigger_SetFlag		0x9f,C05_1_Event_0;0x084a5b18
	Trigger_Time		PlayerOne,0
	Trigger_ASMCheckTrue	0x08074599
	Trigger_SetFlag		0x9e,C05_1_Event_1;0x084a5f88
	Trigger_Time		PlayerOne,1
	Trigger_SetFlag		0xff,C05_1_Event_2;0x084a5908
	Trigger_Time		PlayerTwo,1
	Trigger_SetFlag		0xff,C05_1_Event_3;0x084a5e18
	Trigger_Time		PlayerOne,2
	Trigger_SetFlag		0xff,C05_1_Event_4;0x084a5ec8
	Trigger_Time		PlayerOne,3
	Trigger_SetFlag		0xff,C05_1_Event_5;0x084a60e8
	Trigger_Time		PlayerTwo,0
	Trigger_ASMCheckTrue	0x08045b19
	Trigger_SetFlag		0x04,C05_1_Event_6;0x084a6048
	Trigger_EndEvent

; blank line
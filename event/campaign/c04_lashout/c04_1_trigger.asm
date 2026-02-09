; Original offset: 0x084a5570
C04_1_Trigger:
	Trigger_Time	PlayerOne,1
	Trigger_SetFlag	0xff,C04_1_Event_0;0x084a4838
	Trigger_Time	PlayerTwo,1
	Trigger_SetFlag	0xff,C04_1_Event_1;0x084a4ee8
	Trigger_Time	PlayerOne,2
	Trigger_SetFlag	0xff,C04_1_Event_2;0x084a5058
	Trigger_Time	PlayerOne,6
	Trigger_SetFlag	0xff,C04_1_Event_3;0x084a50e8
	Trigger_Time	PlayerOne,0
	Trigger_ASMCheckTrue	0x080745a9
	Trigger_SetFlag	0x9f,C04_1_Event_4;0x084a4e58
	Trigger_Time	PlayerOne,0
	Trigger_ASMCheckTrue	0x08074599
	Trigger_SetFlag	0x9e,C04_1_Event_5;0x084a5138
	Trigger_EndEvent

; blank line
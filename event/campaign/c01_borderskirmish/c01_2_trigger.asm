; Original offset: 0x084a28b0
C01_2_Trigger:
	Trigger_SelectUnit	Unit_Artillery,0x00000000
	Trigger_Time		PlayerOne,1
	Trigger_SetFlag		0x00,C01_2_Event_0;0x084a2378
	Trigger_SelectUnit	Unit_Mech,0x00000000
	Trigger_Time		PlayerOne,1
	Trigger_SetFlag		0x01,C01_2_Event_1;0x084a2448
	Trigger_EndEvent

; blank line
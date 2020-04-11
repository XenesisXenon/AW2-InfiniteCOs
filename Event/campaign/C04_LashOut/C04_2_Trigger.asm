; Original offset: 0x084a55e8
C04_2_Trigger:
	Trigger_SelectUnit	Unit_Rockets,0x00000000
	Trigger_SetFlag	0x9c,C04_2_Event_0;0x084a4a88
	Trigger_SelectUnit	Unit_TransportCopter,0x00000000
	Trigger_SetFlag	0x00,C04_2_Event_1;0x084a4b18
	Trigger_SelectUnit	Unit_Battleship,0x00000000
	Trigger_SetFlag	0x01,C04_2_Event_2;0x084a4c78
	Trigger_SelectUnit	Unit_Cruiser,0x00000000
	Trigger_SetFlag	0x02,C04_2_Event_3;0x084a4d78
	Trigger_SelectUnit	Unit_Sub,0x00000000
	Trigger_SetFlag	0x03,C04_2_Event_4;0x084a4cc8
	Trigger_SelectUnit	Unit_Lander,0x00000000
	Trigger_SetFlag	0x04,C04_2_Event_5;0x084a4dc8
	Trigger_EndEvent

; blank line
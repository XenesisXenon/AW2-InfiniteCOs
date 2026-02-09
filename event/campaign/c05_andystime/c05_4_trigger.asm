; Original offset: 0x084a66d8
C05_4_Trigger:
	Trigger_SelectMenu	0x2c,0x00000000
	Trigger_SetFlag	0x00,C05_4_Event_0;0x084a5f38
	Trigger_SelectMenu	0x0e,0x00000000
	Trigger_SelectUnit	Unit_Recon,0x00000000
	Trigger_SetFlag	0x01,C05_4_Event_1;0x084a5bc8
	Trigger_SelectMenu	0x0e,0x00000000
	Trigger_SelectUnit	Unit_AntiAir,0x00000000
	Trigger_SetFlag	0x9d,C05_4_Event_2;0x084a5c38
	Trigger_SelectMenu	0x0e,0x00000000
	Trigger_SelectUnit	Unit_Rockets,0x00000000
	Trigger_SetFlag	0x9c,C05_4_Event_3;0x084a5c88
	Trigger_SelectMenu	0x0e,0x00000000
	Trigger_SelectUnit	Unit_Missiles,0x00000000
	Trigger_SetFlag	0x02,C05_4_Event_4;0x084a5d18
	Trigger_SelectMenu	0x0e,0x00000000
	Trigger_SelectUnit	Unit_Neotank,0x00000000
	Trigger_SetFlag	0x03,C05_4_Event_5;0x084a5d68
	Trigger_EndEvent

; blank line
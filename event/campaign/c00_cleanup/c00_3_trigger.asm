; Original offset: 0x084a1c58
C00_3_Trigger:
	Trigger_SelectUnit	Unit_Infantry,0x00000000
	Trigger_IsFlagTrue	0x04,0x00000000
	Trigger_SetFlag		0x05,0x00000000
	Trigger_SelectUnit	Unit_Infantry,0x00000000
	Trigger_IsFlagTrue	0x03,0x00000000
	Trigger_SetFlag		0x04,0x00000000
	Trigger_SelectUnit	Unit_Infantry,0x00000000
	Trigger_SetFlag		0x03,0x00000000
	Trigger_SelectUnit	Unit_APC,0x00000000
	Trigger_SetFlag		0x06,0x00000000
	Trigger_Time		PlayerOne,1
	Trigger_IsFlagTrue	0x03,0x00000000
	Trigger_IsFlagTrue	0x04,0x00000000
	Trigger_IsFlagTrue	0x05,0x00000000
	Trigger_IsFlagTrue	0x06,0x00000000
	Trigger_SetFlag		0xff,C00_3_Event_0;0x084a1628
	Trigger_EndEvent

; blank line
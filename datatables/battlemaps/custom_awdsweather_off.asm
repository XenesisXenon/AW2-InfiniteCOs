;Icon
	.dh	0x18
	
;Name (Text ID)
	.dh	TextID_Battlemaps+40
	
;Price
	.dw	0
	
;Bit Check Subroutine
	.dw	AvailCheck_AWDSWeather_IsOn+1
	
;Bit Set Subroutine
	.dw	BitSet_ToggleGlobal+1
	
;Bit to set when purchased
	.dw	UnlockBoolean_Custom_AWDSWeather
	
;Event
	.dw	Event_AWDSWeatherOff

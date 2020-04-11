;Icon
	.dh	0x18
	
;Name (Text ID)
	.dh	TextID_Battlemaps+38
	
;Price
	.dw	0
	
;Bit Check Subroutine
	.dw	AvailCheck_AWDSWeather_IsOff+1
	
;Bit Set Subroutine
	.dw	0x0803CBA0+1
	
;Bit to set when purchased
	.dw	UnlockBoolean_Custom_AWDSWeather
	
;Event
	.dw	Event_AWDSWeatherOn

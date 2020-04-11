;Game Rule Offsets
;Relative to CurrentGameOptions at 0x03003FC0
GameRule_GameMode		equ	0x1	;Byte
GameRule_MapID			equ	0x2	;Halfword
GameRule_DisplayMiniInfoBox	equ	0x5	;Byte
GameRule_COPowers		equ	0x7	;Byte
GameRule_COAbilities		equ	0x8	;Byte
GameRule_AnimationMode		equ	0x9	;Byte
GameRule_MusicMode		equ	0xC	;Byte
GameRule_FogOfWar		equ	0xD	;Byte
GameRule_FundsPerProperty	equ	0x28	;Halfword
GameRule_ActiveWeather		equ	0x2C	;Byte
GameRule_RandomWeather		equ	0x2D	;Byte
GameRule_DefaultWeather		equ	0x2F	;Byte
GameRule_TurnLimit		equ	0x30	;Byte
GameRule_CaptureLimit		equ	0x31	;Byte
GameRule_AllowSaving		equ	0x32	;Byte
GameRule_TeamColours		equ	0x33	;5 Bytes
GameRule_AISetting		equ	0x38	;5 Bytes
GameRule_COSetting		equ	0x3D	;5 Bytes

;Custom
GameRule_Tileset		equ	0x2E	;Byte
GameRule_FreeCOSelect		equ	0x10	;Byte
GameRule_TileAllocation_Table	equ	0x11	;Byte
GameRule_TurnTimer		equ	0x12	;Halfword
GameRule_ChargingStyle		equ	0x14	;Byte
GameRule_WeatherStyle		equ	0x15	;Byte

;Game Rule Options
;Game Mode
GameMode_Campaign	equ	1
GameMode_WarRoom	equ	2
GameMode_Versus		equ	3
GameMode_DesignMaps	equ	5

AISetting_None		equ	0
AISetting_Human		equ	1
AISetting_Bot		equ	2
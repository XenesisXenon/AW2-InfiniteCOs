;Equs for Scripting and control codes
	TextNL 			equ 0x0D
	TextWait 		equ 0x0E
	TextConfirm 		equ 0x0F
	TextBlack 		equ 0x80
	TextBlue 		equ 0x83
	TextRed 		equ 0x82
	TextGray 		equ 0x81
	TextGrey 		equ 0x81
	TextYesNo 		equ 0x17
	TextIcon 		equ 0x09
	TextQuote		equ 0x22

	.macro	TextEnd
		.db	0x0
	.endmacro

	;3316
	ScriptOutrealm 		equ 3316
	ScriptAWDSJugger 	equ ScriptOutrealm+(14*1)
	ScriptAWDSKindle 	equ ScriptOutrealm+(14*2)
	ScriptAWDSSasha 	equ ScriptOutrealm+(14*3)
	ScriptAWDSJake 		equ ScriptOutrealm+(14*4)
	ScriptAWDSKoal 		equ ScriptOutrealm+(14*5)
	ScriptAWDSGrimm 	equ ScriptOutrealm+(14*6)
	ScriptAW1Sturm 		equ ScriptOutrealm+(14*7)
	ScriptAW1SturmVs 	equ ScriptOutrealm+(14*8)
	ScriptAWDSJavier 	equ ScriptOutrealm+(14*9)
	ScriptAW1Andy 		equ ScriptOutrealm+(14*10)	
	ScriptAW1Max 		equ ScriptOutrealm+(14*11)
	ScriptAW1Sami 		equ ScriptOutrealm+(14*12)	
	ScriptAW1Nell 		equ ScriptOutrealm+(14*13)
	ScriptAW1Olaf 		equ ScriptOutrealm+(14*14)
	ScriptAW1Grit 		equ ScriptOutrealm+(14*15)
	ScriptAW1Kanbei 	equ ScriptOutrealm+(14*16)
	ScriptAW1Sonja 		equ ScriptOutrealm+(14*17)	
	ScriptAW1Eagle 		equ ScriptOutrealm+(14*18)
	ScriptAW1Drake 		equ ScriptOutrealm+(14*19)
	ScriptSFWCaroline 	equ ScriptOutrealm+(14*20)
	ScriptSFWYamamoto 	equ ScriptOutrealm+(14*21)
	ScriptSFWBillygates 	equ ScriptOutrealm+(14*22)
	ScriptAWDSOlaf 		equ ScriptOutrealm+(14*23)
	ScriptAWDSNell 		equ ScriptOutrealm+(14*24)
	ScriptAWDSRachel 	equ ScriptOutrealm+(14*25)
	ScriptAWDSAndy 		equ ScriptOutrealm+(14*26)
	ScriptAWDSMax 		equ ScriptOutrealm+(14*27)
	ScriptAWDSSami 		equ ScriptOutrealm+(14*28)
	ScriptAWDSGrit 		equ ScriptOutrealm+(14*29)
	ScriptAWDSKanbei 	equ ScriptOutrealm+(14*30)
	ScriptAWDSSonja 	equ ScriptOutrealm+(14*31)

	ScriptAWDSEagle 	equ ScriptOutrealm+(14*32)
	ScriptAWDSDrake 	equ ScriptOutrealm+(14*33)
	ScriptAWDSFlak	 	equ ScriptOutrealm+(14*34)
	ScriptAWDSLash	 	equ ScriptOutrealm+(14*35)
	ScriptAWDSAdder 	equ ScriptOutrealm+(14*36)
	ScriptAWDSHawke 	equ ScriptOutrealm+(14*37)
	ScriptAWDSVonbolt 	equ ScriptOutrealm+(14*38)
	
	ScriptAWDSHachi 	equ ScriptOutrealm+(14*39)
	ScriptAWDSColin 	equ ScriptOutrealm+(14*40)
	ScriptAWDSJess	 	equ ScriptOutrealm+(14*41)
	ScriptAWDSSensei 	equ ScriptOutrealm+(14*42)
	
	ScriptCCOVenomAdder	equ ScriptOutrealm+(14*43)
	ScriptCCOEpoch		equ ScriptOutrealm+(14*44)
	ScriptCCOWalter		equ ScriptOutrealm+(14*45)	
	ScriptCCOZed		equ ScriptOutrealm+(14*46)
	ScriptCCOEliwood	equ ScriptOutrealm+(14*47)
	ScriptCCONergal		equ ScriptOutrealm+(14*48)
	ScriptCCOTransmog	equ ScriptOutrealm+(14*49)

	AdditionalMapCaseNames	equ ScriptCCOTransmog+14
	AW1TutorialMapNames	equ AdditionalMapCaseNames+10
	AW1CampaignMapNames	equ AW1TutorialMapNames+14
	AWDSCampaignMapNames	equ AW1CampaignMapNames+34
	AdditionalMapNames	equ AWDSCampaignMapNames+33
	AWDoRMapNames		equ AdditionalMapNames+167
	FE7MapNames		equ AWDoRMapNames+AWDoR_2p_Map_Total
	CustomMapNames		equ FE7MapNames+Emblem7_Map_Total
	
	Dossier_DynamicStringID		equ	CustomMapNames+Custom_Map_Total
	Dossier_TitleStringID		equ	Dossier_DynamicStringID+12
	MenuCommands_StringIDBase	equ 	Dossier_TitleStringID+1

	TextID_COSwap		equ MenuCommands_StringIDBase+9
	TextID_AWDSTower	equ TextID_COSwap+3
	TextID_AW4_Wasteland	equ TextID_AWDSTower+2
	TextID_AW4_Mist		equ TextID_AW4_Wasteland+2
	TextID_AW4_Ruins	equ TextID_AW4_Mist+2
	TextID_AW4_Rough	equ TextID_AW4_Ruins+2
	TextID_AW4_Fire		equ TextID_AW4_Rough+2
	
	TextID_VersusSetup	equ TextID_AW4_Fire+2
	TextID_Battlemaps	equ TextID_VersusSetup+2

;custom_battlemaps.asm

String_UnlockAll_Name:
	.ascii "Full Unlock",0x0

String_UnlockAll_Desc:
	.ascii "Choose this and you will",TextNL
	.ascii "unlock all the Maps, COs and",TextConfirm
	.ascii "other options.",TextNL
	.ascii "Go play some games!",TextConfirm
	TextEnd

String_TimerOn_Name:
	.ascii "Turn Timer: On",0x0
	
String_TimerOn_Desc:
	.ascii "Turn on a stopwatch timer",TextNL
	.ascii "for Versus mode.",TextConfirm
	.ascii "The default timer is set for",TextNL
	.ascii "3 minutes per turn.",TextConfirm
	TextEnd
	
String_TimerOff_Name:
	.ascii "Turn Timer: Off",0x0
	
String_TimerOff_Desc:
	.ascii "Turn off a stopwatch timer",TextNL
	.ascii "for Versus mode.",TextConfirm
	TextEnd
	
String_ChargeModeOn_Name:
	.ascii "AW2 Charging",0x0
String_ChargeModeOn_Desc:
	.ascii "Set all COs to use AW2",TextNL
	.ascii "style CO Power charging.",TextConfirm
	.ascii "This only takes effect upon",TextNL
	.ascii "starting a NEW Vs. battle.",TextConfirm
	TextEnd
	
String_ChargeModeOff_Name:
	.ascii "Per-CO Charging",0x0
String_ChargeModeOff_Desc:
	.ascii "All COs will use their CO Power charging",TextNL
	.ascii "rules from their own games.",TextConfirm
	.ascii "This only takes effect upon",TextNL
	.ascii "starting a NEW Vs. battle.",TextConfirm
	TextEnd
	
String_ChargeModeAW1On_Name:
	.ascii "AW1 Charging",0x0
String_ChargeModeAW1On_Desc:
	.ascii "Set all COs to use AW1",TextNL
	.ascii "style CO Power charging.",TextConfirm
	.ascii "This only takes effect upon",TextNL
	.ascii "starting a NEW Vs. battle.",TextConfirm
	TextEnd

String_ChargeModeAW3On_Name:
	.ascii "AWDS Charging",0x0
String_ChargeModeAW3On_Desc:
	.ascii "Set all COs to use AWDS",TextNL
	.ascii "style CO Power charging.",TextConfirm
	.ascii "This only takes effect upon",TextNL
	.ascii "starting a NEW Vs. battle.",TextConfirm
	TextEnd

String_DebugOn_Name:
	.ascii "Debug Mode: On",0x0
String_DebugOn_Desc:
	.ascii "Enable the Infinite COs debug",TextNL
	.ascii "menu for testing.",TextConfirm
	TextEnd
String_DebugOff_Name:
	.ascii "Debug Mode: Off",0x0
String_DebugOff_Desc:
	.ascii "Disable the Infinite COs debug",TextNL
	.ascii "menu.",TextConfirm
	TextEnd

String_CampaignCOOn_Name:
	.ascii "Campaign COs: All",0x0
String_CampaignCOOn_Desc:
	.ascii "Allows the use of any available",TextNL
	.ascii "CO for Campaign levels.",TextConfirm
	.ascii "This only takes effect upon",TextNL
	.ascii "starting a NEW Campaign.",TextConfirm
	TextEnd
	
String_CampaignCOOff_Name:
	.ascii "Campaign COs: Default",0x0
	
String_CampaignCOOff_Desc:
	.ascii "Returns the CO selection to",TextNL
	.ascii "the Campaign defaults.",TextConfirm
	.ascii "This only takes effect upon",TextNL
	.ascii "starting a NEW Campaign.",TextConfirm
	TextEnd
	
String_VersusCO_Default_Name:
	.ascii "Versus COs: Default",0x0
	
String_VersusCO_Default_Desc:
	.ascii "Returns the CO selection to",TextNL
	.ascii "the Versus mode defaults.",TextConfirm
	.ascii "This clears all restrictions while",TextNL
	.ascii "including all COs in this mod.",TextConfirm
	TextEnd
	
String_VersusCO_AW1_Name:
	.ascii "Versus COs: AW1",0x0
	
String_VersusCO_AW1_Desc:
	.ascii "Restricts the CO selection in",TextNL
	.ascii "Versus mode to COs from AW1 only.",TextConfirm
	.ascii "Can be combined with the other CO list",TextNL
	.ascii "restrictions to build a customised CO list.",TextConfirm
	TextEnd
	
String_VersusCO_AW2_Name:
	.ascii "Versus COs: AW2",0x0
	
String_VersusCO_AW2_Desc:
	.ascii "Restricts the CO selection in",TextNL
	.ascii "Versus mode to COs from AW2 only.",TextConfirm
	.ascii "Can be combined with the other CO list",TextNL
	.ascii "restrictions to build a customised CO list.",TextConfirm
	TextEnd
	
String_VersusCO_AW3_Name:
	.ascii "Versus COs: AWDS",0x0
	
String_VersusCO_AW3_Desc:
	.ascii "Restricts the CO selection in",TextNL
	.ascii "Versus mode to COs from AWDS only.",TextConfirm
	.ascii "Can be combined with the other CO list",TextNL
	.ascii "restrictions to build a customised CO list.",TextConfirm
	TextEnd
	
String_VersusCO_CCO_Name:
	.ascii "Versus COs: Custom",0x0
	
String_VersusCO_CCO_Desc:
	.ascii "Restricts the CO selection in",TextNL
	.ascii "Versus mode to custom COs only.",TextConfirm
	.ascii "Custom COs are likely to be silly,",TextNL
	.ascii "experimental or plain weird.",TextConfirm
	.ascii "They also may break strangely.",TextNL
	.ascii "Please enjoy them otherwise.",TextConfirm
	.ascii "Can be combined with the other CO list",TextNL
	.ascii "restrictions to build a customised CO list.",TextConfirm
	TextEnd
	
String_VersusCO_SFW_Name:
	.ascii "Versus COs: SFW",0x0
	
String_VersusCO_SFW_Desc:
	.ascii "Restricts the CO selection in",TextNL
	.ascii "Versus mode to COs from SFW only.",TextConfirm
	.ascii "Can be combined with the other CO list",TextNL
	.ascii "restrictions to build a customised CO list.",TextConfirm
	TextEnd
	
String_CampaignForcesOn_Name:
	.ascii "Campaign Skills: On",0x0

String_CampaignForcesOn_Desc:
	.ascii "Allows the use of skills for all",TextNL
	.ascii "COs for Campaign levels.",TextConfirm
	.ascii "This only takes effect upon",TextNL
	.ascii "starting a NEW Campaign.",TextConfirm
	TextEnd
	
String_CampaignForcesOff_Name:
	.ascii "Campaign Skills: Off",0x0

String_CampaignForcesOff_Desc:
	.ascii "Disallows the use of skills for all",TextNL
	.ascii "COs for Campaign levels.",TextConfirm
	.ascii "This only takes effect upon",TextNL
	.ascii "starting a NEW Campaign.",TextConfirm
	TextEnd

String_CampaignTutorialSkipOn_Name:
	.ascii "Skip Tutorial: On",0x0

String_CampaignTutorialSkipOn_Desc:
	.ascii "Skips the tutorial maps for the",TextNL
	.ascii "Orange Star portion of the Campaign.",TextConfirm
	.ascii "This only takes effect upon",TextNL
	.ascii "starting a NEW Campaign.",TextConfirm
	TextEnd
	
String_CampaignTutorialSkipOff_Name:
	.ascii "Skip Tutorial: Off",0x0

String_CampaignTutorialSkipOff_Desc:
	.ascii "Play the standard mission set when",TextNL
	.ascii "playing through the campaign.",TextConfirm
	.ascii "This only takes effect upon",TextNL
	.ascii "starting a NEW Campaign.",TextConfirm
	TextEnd

String_AWDSWeatherOn_Name:
	.ascii "AWDS Weather: On",0x0
	
String_AWDSWeatherOn_Desc:
	.ascii "Random and permanent weather will use",TextNL
	.ascii "the Dual Strike rules.",TextConfirm
	.ascii "This only takes effect upon",TextNL
	.ascii "starting a NEW Vs. battle.",TextConfirm
	TextEnd
	
String_AWDSWeatherOff_Name:
	.ascii "AW1&2 Weather: On",0x0
	
String_AWDSWeatherOff_Desc:
	.ascii "Random and permanent weather will use",TextNL
	.ascii "the Advance Wars 1 & 2 rules.",TextConfirm
	.ascii "This only takes effect upon",TextNL
	.ascii "starting a NEW Vs. battle.",TextConfirm
	TextEnd

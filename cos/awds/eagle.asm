	setCODefaults           coAWDSEagle
	setCOGameID		coAWDSEagle,Game_AWDS

	setCOGFXFullbody        coAWDSEagle,GraphicsAWDSEagleGraphic
	setCOGFXName            coAWDSEagle,GraphicsAWDSEagleName
	setCOGFXPalette         coAWDSEagle,GraphicsAWDSEaglePalette
	setCOGFXFace            coAWDSEagle,GraphicsAWDSEagleFace,GraphicsAWDSEagleHappyFace,GraphicsAWDSEagleSadFace
	setCOGFXSmallFace       coAWDSEagle,GraphicsAWDSEagleMugshot
	setCOGFXPowerAnim       coAWDSEagle,3,1
	setCOGFXPowerSFX        coAWDSEagle,0xBA,0xbb
	setCOGFXSuperAnim       coAWDSEagle,7,7
	setCOGFXSuperSFX        coAWDSEagle,0x1f7,0x1f8
	
	setCOName               coAWDSEagle,ScriptAWDSEagle
	setCOpowerName          coAWDSEagle,ScriptAWDSEagle+1
	setCOsuperName          coAWDSEagle,ScriptAWDSEagle+2
	setCOpowerText          coAWDSEagle,ScriptAWDSEagle+8,ScriptAWDSEagle+9,ScriptAWDSEagle+10,ScriptAWDSEagle+11,ScriptAWDSEagle+12,ScriptAWDSEagle+13
	setCOprofileText        coAWDSEagle,ScriptAWDSEagle+3,ScriptAWDSEagle+4,ScriptAWDSEagle+5,ScriptAWDSEagle+6
	setCOvictoryText        coAWDSEagle,ScriptAWDSEagle+7

	setCOFaction			coAWDSEagle,ArmyGreenEarth
	setCOMusic          	coAWDSEagle,MusicEagleTheme

	setCOPowerCost          coAWDSEagle,3
	setCOSuperCost          coAWDSEagle,9
	
	setCOD2DAbilities	coAWDSEagle,SpecialAerialFuelSaver
	setCOPowerAbilities	coAWDSEagle,SpecialAerialFuelSaver
	setCOSuperAbilities	coAWDSEagle,SpecialAerialFuelSaver

	setCOD2DNavyStat	coAWDSEagle,-10,0,0,0
	setCOD2DAirStat		coAWDSEagle,20,0,0,0

	setCOPowerAllStat	coAWDSEagle,-50,0,0,0
	setCOPowerNavyStat	coAWDSEagle,-55,0,0,0
	setCOPowerAirStat	coAWDSEagle,-40,0,0,0
	setCOPowerSoldierStat	coAWDSEagle,0,0,0,0

	setCOSuperAirStat	coAWDSEagle,20,0,0,0
	setCOSuperNavyStat	coAWDSEagle,-10,0,0,0

	setCOGFXPowerRule	coAWDSEagle,COPCheckAerialClassOrWaitMode
	setCOGFXPowerFX		coAWDSEagle,COPEffectReanimateUnit
	setCOGFXSuperRule	coAWDSEagle,COPCheckAerialClassOrWaitMode
	setCOGFXSuperFX		coAWDSEagle,COPEffectReanimateUnit

	setCOAIPowerRange       coAWDSEagle,15
	setCOAIPowerTrigger     coAWDSEagle,70
	setCOAIPowerTriggerASM  coAWDSEagle,AIActivateCOPStartSCOPEnd
; blank line

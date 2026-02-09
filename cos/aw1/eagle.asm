	setCODefaults           coAW1Eagle
	setCOGameID		coAW1Eagle,Game_AW1

	setCOGFXFullbody        coAW1Eagle,GraphicsAW1EagleGraphic
	setCOGFXName            coAW1Eagle,0x080f59b8
	setCOGFXPalette         coAW1Eagle,GraphicsAW1EaglePalette
	setCOGFXFace            coAW1Eagle,GraphicsAW1EagleFace,GraphicsAW1EagleHappyFace,GraphicsAW1EagleSadFace
	setCOGFXSmallFace       coAW1Eagle,GraphicsAW1EagleMugshot
	setCOGFXPowerAnim       coAW1Eagle,3,1
	setCOGFXPowerSFX        coAW1Eagle,0xBA,0xBB
	setCOGFXSuperAnim       coAW1Eagle,7,7
	setCOGFXSuperSFX        coAW1Eagle,0xBA,0xBB
	
	setCOName               coAW1Eagle,ScriptAW1Eagle
	setCOpowerName          coAW1Eagle,ScriptAW1Eagle+1
	setCOsuperName          coAW1Eagle,ScriptAW1Eagle+2
	setCOpowerText          coAW1Eagle,ScriptAW1Eagle+8,ScriptAW1Eagle+9,ScriptAW1Eagle+10,ScriptAW1Eagle+11,ScriptAW1Eagle+12,ScriptAW1Eagle+13
	setCOprofileText        coAW1Eagle,ScriptAW1Eagle+3,ScriptAW1Eagle+4,ScriptAW1Eagle+5,ScriptAW1Eagle+6
	setCOvictoryText        coAW1Eagle,ScriptAW1Eagle+7

	setCOFaction		coAW1Eagle,ArmyGreenEarth
	setCOMusic              coAW1Eagle,MusicEagleTheme
	setCOSuperMusic     	COAW1Eagle,MusicPower

	setCOPowerCost          coAW1Eagle,10
	setCOSuperCost          coAW1Eagle,10
	
	setCOD2DNavyStat	coAW1Eagle,-20,0,0,0
	setCOD2DAirStat		coAW1Eagle,15,10,0,0
	
	setCOPowerAllStat	coAW1Eagle,-30,-40,0,0
	setCOPowerNavyStat	coAW1Eagle,-46,-40,0,0
	setCOPowerAirStat	coAW1Eagle,-18,-33,0,0
	
	setCOSuperAllStat	coAW1Eagle,-30,-40,0,0
	setCOSuperNavyStat	coAW1Eagle,-46,-40,0,0
	setCOSuperAirStat	coAW1Eagle,-18,-33,0,0

	setCOGFXPowerRule       coAW1Eagle,COPCheckAerialClassOrWaitMode
	setCOGFXPowerFX         coAW1Eagle,COPEffectReanimateUnit
	
	setCOGFXSuperRule       coAW1Eagle,COPCheckAerialClassOrWaitMode
	setCOGFXSuperFX         coAW1Eagle,COPEffectReanimateUnit
		
	setCOAIPowerRange       coAW1Eagle,0
	setCOAIPowerTrigger     coAW1Eagle,0
	setCOAIPowerTriggerASM  coAW1Eagle,AIActivateCOPStartSCOPEnd

; blank line



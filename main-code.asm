;Main-Code.asm
;This is for floating location code
;This Section is for Floating Location Code	

;Code
	.include "./common/common_functions.asm"
	.align 4
	.include "./code/PowerChargingModifier/corepowercharge.asm"
	.align 4
	.include "./code/PowerChargingModifier/core_starcost.asm"
	.align 4
	.include "./code/repairexpansion/corerepairexpansion.asm"	
	.align 4
	.include "./code/captureexpansion/corecaptureexpansion.asm"
	.align 4
	.include "./code/unitpriceexpansion/coreunitpriceexpansion.asm"
	.align 4
	.include "./code/covisionexpansion/corecovisionexpansion.asm"
	.align 4
	.include "./code/movebonusexpansion/core_movebonusexpansion.asm"
	.align 4
	.include "./code/fuelsaveexpansion/corefuelsaveexpansion.asm"
	.align 4
	.include "./code/propertybuildbits/corepropertybuildbits.asm"
	.align 4
	.include "./code/propertyoam/tablepropertyoamjump.asm"
	.align 4
	.include "./code/maps/coreunitlist.asm"
	.align 4
	.include "./code/save/coresave.asm"
	.align 4
	.include "./code/menucommands/coremenucommands.asm"
	.align 4
	.include "./code/versusmenu/coreversusmenu.asm"
	.align 4
	.include "./code/palettefix/corepalettefix.asm"
	.align 4
	.include "./code/dossier/core_dossier.asm"
	.align 4
	.include "./code/smallmugfix/coresmallmugfix.asm"
	.align 4
	.include "./code/selectmodemenu/core_selectmode_menu.asm"
	.align 4
	.include "./code/maps/CoreMapHeaderDesignMapDisplayExpansion.asm"
	.align 4
	.include "./code/keypad/core_keypad.asm"
	.align 4
	.include "./code/timerdisplay/core_timerdisplay.asm"
	.align 4
	.include "./code/battlemaps/core_battlemaps.asm"
	.align 4
	.include "./code/weather/core_weather.asm"
	.align 4
	.include "./code/gastrick/core_gastrick.asm"
	.align 4
	.include "./code/rinfomenu/coreterrainrinfomenu.asm"
	.align 4
	.include "./code/unlockbonuscos/coreunlockbonus.asm"
	.align 4
	.include "./code/awplaunchstun/corelaunchstun.asm"
	.align 4
	.include "./code/damageformula/core_damageformula.asm"
	.align 4
	.include "./code/damageformula/core_damagerange.asm"	
	.align 4
	.include "./code/massdamageexpansion/coremassdamageclearcapture.asm"	
	.align 4
	.include "./code/massdamageexpansion/coreterrainmassdamage.asm"
	.align 4
	.include "./code/incomemodifier/coreincomemodifier.asm"
	.align 4
	.include "./code/mapcases/coremapcases.asm"
	.align 4
	.include "./code/hardtoggle/corehardtoggle.asm"
	.align 4
	.include "./code/powerchargingmodifier/corepowerSCOPdisable.asm"
	.align 4
	.include "./code/dyn_tilemaps/core_dynamictilemaps.asm"
	.align 4
	.include "./code/gamemap_init/core_gamemapinit.asm"
	.align 4
	.include "./code/campaign/core_campaign.asm"
	.align 4
	.include "./code/MeteorPowerExpansion/meteorpowerexpansionmain.asm"
	.align 4
	.include "./code/freecopmusic/corefreescopmusic.asm"
	.align 4
	.include "./code/freecopmusic/core_d2dmusic.asm"
	.align 4
	.include "./code/customuniticons/corecustomuniticonsdisp.asm"
	.align 4
	.include "./code/Script_Functions/Core_Script_Functions.asm"
	.align 4
	.include "./code/pathfinding/core_pathfinding.asm"
	.align 4
	.include "./code/copower/core_copower.asm"

	;Engine Scripts
	.align 4
	.include "./EngineScript/CoreEngineScript.asm"
	.align 4
	.include "./maps/coremaps.asm"

	;Text String Data
	.align 4
	.include "./text/texttable.asm"
	.align 4
	.include "./text/script.asm"
	.align 4
	.include "./text/coretextmain.asm"
	
	;Setup
	.align 4
;blank line
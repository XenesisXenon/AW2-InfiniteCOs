
;This Section is for Fixed-location Code, including hooks.
;*Common Code*
	.include "./common/common.asm"
;*Menu System*
	.include "./code/menucommands/hookmenucommands.asm"

;*System Calls and Functions
.org 0x0808AAA0
	.include "./code/syscall/syscall.asm"
.org 0x0808BBBC
	.include "./code/syscall/linked_bx.asm"
	
	
;*Data Tables and Hacks for them*
;Custom data table for per-unit CO stats (instead of per-class)
	.include "./datatables/hookcounitstats.asm"	
;CO Data Table Entries
	.include "./datatables/hookcotable.asm"
;CO Power and Graphics Data Table Entries/Code
	.include "./datatables/hookcographicsandpowertable.asm"
;Unit Data Table Entries
	.include "./datatables/hookunittable.asm"
;Terrain Data Table Entries
	.include "./datatables/hookterrainclassinfo.asm"
;Terrain 16x16 Tile Behaviour Table (Tile Definition)
	.include "./datatables/hook16tileallocation.asm"
;Terrain 8x8 Graphics to Tiles (TSA)
	.include "./datatables/hook8tileallocation.asm"
;Terrain 4x4 Graphics to Tiles (Mini-Map)
	.include "./datatables/hook4tileallocation.asm"
;Property Allocation Table to Tile IDs
	.include "./datatables/hookpropertyallocation.asm"
	
;Modifications to Tile Allocations to Allow for multiple tilemap types
	.include "./code/dyn_tilemaps/hook_dynamictilemaps.asm"
;Modifications to Game Rules Initialisation
	.include "./code/gamemap_init/hook_gamemapinit.asm"
;Modifications to the Damage formula for bugfix/expansion
	.include "./code/damageformula/hook_damageformula.asm"
;Modifications to the Mass Damage code for Expansion
	.include "./code/massdamageexpansion/hookmassdamageclearcapture.asm"
;Modification to the Repair Code for Expansion
	.include "./code/repairexpansion/hookrepairexpansion.asm"
;Modification to the Capture Code for Expansion
	.include "./code/captureexpansion/hookcaptureexpansion.asm"
;Modification to the Cost Change Code for Expansion
	.include "./code/unitpriceexpansion/hookunitpriceexpansion.asm"
;Modification to the CO's Vision Change code for Expansion
	.include "./code/covisionexpansion/hookcovisionexpansion.asm"
;Modification to the CO's Movement change code for Expansion
	.include "./code/movebonusexpansion/hook_movebonusexpansion.asm"
;Modification to the CO's Fuel Saver code for Expansion
	.include "./code/fuelsaveexpansion/hookfuelsaveexpansion.asm"
;Modification to the CO's Build Bits. Fixes AI's use of Hachi SCOP
	.include "./code/propertybuildbits/hookpropertybuildbits.asm"
;Modification to Weather Mechanics
	.include "./code/weather/hookweather.asm"
;Modification to the Display For Terrain Stars Infobox + R-Info
	.include "./code/damageformula/hook_terrainstardisplayadjust.asm"
;Modification to the Display for Unit HP Infobox
	.include "./code/damageformula/hook_infoboxhpdisplayadjust.asm"
;Modification to the Over-Unit HP Display to Support More things
	.include "./code/damageformula/hook_unithpdisplayhidden.asm"
;Modification to the R-Info Setup Code for altering the One/Two Pages
	.include "./code/rinfomenu/hookterrainrinfomenu.asm"
;Modification to allow the Addition of more Daily Items
;	.include "code/dailyitems/hookdailyitems.asm"	
;Modification to allow Map Unit Lists to be specific to one CO
	.include "./code/maps/hookunitlist.asm"
;Modification to allow for movement cost manipulations
	.include "./code/movecostexpansion/hook_movecostexpansion.asm"
;Modification to allow for Attack-order modification expansion
	.include "./code/attackorderexpansion/hook_attackorderexpansion.asm"
;Modification to Pathfinding to allow for Move but not stop terrain
	.include "./code/pathfinding/hook_pathfinding.asm"
;Map Header Table Pointer Updates
	.include "./code/maps/hookmapsheader.asm"	
;Map Table Inclusion
	.include "./maps/hookmaps.asm"
;Modification to Allow Campaign Map Selection in Vs
;also includes text buffering fixes
	.include "./code/mapcases/hookmapcases.asm"
;Modification to Allow Selection of "Hard Mode" Maps in Versus
	.include "./code/hardtoggle/hookhardtoggle.asm"
;Modification to the Property OAM Table List
	.include "./code/propertyoam/hookpropertyoamspriteloader.asm"
;AI Datatable
	.include "./datatables/hookaitable.asm"
;Entries for War Room CO Select
	.include "./datatables/hookwarroomcotable.asm"
;Modification to the Select Mode Screen
	.include "./code/selectmodemenu/hook_selectmode_menu.asm"		
;Text Pointer Table
	.include "./text/hooktext.asm"	
;Fixed Location graphics
	.include "./graphics/hookgraphics.asm"
	
;Fixes extended CO's palettes
	.include "./code/palettefix/hookpalettefix.asm"
;Fixes extended CO's Battle Animation Sprites
	.include "./code/banimspritefix/hookbanimspritefix.asm"
;Fixes CO Dossier Text selection
	.include "./code/dossier/hookdossiertextfix.asm"
;Expansion for Dossier for more pages
	.include "./code/dossier/hookdossierpage.asm"
;Fixes Expanded CO Mugs
	.include "./code/smallmugfix/hooksmallmugfix.asm"
;Fixes to the Mini Infobox for Terrain
	.include "./code/terrainfix/hookterrainminiinfoboxfix.asm"
;Fixes to prevent crash when passed a 0 ID CO Power
	.include "./code/splashmod/hooksplashmod.asm"
;Separates Vs. Invention Damage from Vs. Mid Tank Damage
	.include "./code/inventiondamagefix/hookinventiondamagefix.asm"	
;Pointers for various Campaign Code pieces
	.include "./code/Campaign/Hook_campaign.asm"
;Code for various Campaign scripting ASM calls
;	.include "./code/Campaign_Special/hook_campaign_special.asm"
;Code for Co-existing Battle Maps and Option Shop
	.include "./code/Battlemaps/hook_battlemaps.asm"
;Bug Fix for the Gas Trick
;	.include "./code/gastrick/hook_gastrick.asm"
;Fix/Alteration to change what the game considers an indirect
	.include "./code/onerangeindirect/hook_onerangeindirect.asm"
	
;Always makes bonus COs available
	.include "./code/unlockbonuscos/hookunlockbonus.asm"
;Expansion Code to allow daily skills and unit changes
	.include "./code/awplaunchstun/hooklaunchstun.asm"
;Expansion to allow additional CO-Based income
	.include "./code/incomemodifier/hookincomemodifier.asm"
;Expansion to CO Power Charging Subroutine
	.include "./code/PowerChargingModifier/hookpowercharge.asm"
	.include "./code/PowerChargingModifier/hook_starcost.asm"
;Expansion to Allow more Icons eg Vet/Stun
	.include "./code/customuniticons/hookcustomuniticonsdisp.asm"
;Hook to Allow Title Screen Quick Bypass
	.include "./code/quickload/hookquickload.asm"
;Hook to Allow for Disabling SCOPs on the menu
	.include "./code/Powerchargingmodifier/hookpowerSCOPdisable.asm"
;Hook to Modify the Save Functions
	.include "./code/Save/hooksave.asm"
;Hook to Modify Versus Menu Setup
	.include "./code/versusmenu/hookversusmenu.asm"
;Hook for Keypad Input Handlers
	.include "./code/keypad/hook_keypad.asm"
;Hook for expansion of a turn timer
	.include "./code/timerdisplay/hook_timerdisplay.asm"
;Hooks for allowing animated CO Swap Commands and other silliness
	.include "./code/copower/hook_copower.asm"	

;*Musical Hacks and Soundtrack*
	.include "./music/hookmusic.asm"
;Music Table Additions
	.include "./music/hooksappyexpansion.asm"
;Free S/COP Musical Assignment
	.include "./code/freecopmusic/hook_d2dmusic.asm"
	.include "./code/freecopmusic/hookfreecopmusic.asm"
	.include "./code/freecopmusic/hookfreescopmusic.asm"
	
;Test hooks

;blank line

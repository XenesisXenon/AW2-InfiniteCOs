;Advance Wars 2 - AW Infinite COs Complete Build
;main.asm

.open aw2-original.gba, aw2-infinite.gba, 0x08000000
.gba
.thumb


;This Section is for Fixed-location Code, including hooks.
;*Common Code*
	.include common/commonoffsets.asm

;*Data Tables and Hacks for them*
;Pointer Hack Ultra for Advanced Stat Editing
	.include datatables/hookcounitstats.asm	
;CO Data Table Entries
	.include datatables/hookcotable.asm
;CO Power and Graphics Data Table Entries/Code
	.include datatables/hookcographicsandpowertable.asm
;Unit Data Table Entries
	.include datatables/hookunittable.asm
;Modifications to the Damage formula for bugfix/expansion
	.include damageformula/hookdamageformula.asm
;Modifications to the Mass Damage code for Expansion
	.include massdamageexpansion/hookmassdamageclearcapture.asm
;Modification to the Repair Code for Expansion
	.include repairexpansion/hookrepairexpansion.asm
;Modification to Weather Mechanics
	.include weather/hookweather.asm
;Modification to the Display For Terrain Stars Infobox + R-Info
	.include damageformula/hookterrainstardisplayadjust.asm
;Modification to the Display for Unit HP Infobox
	.include damageformula/hookinfoboxhpdisplayadjust.asm
;Modification to the Over-Unit HP Display to Support More things
	.include damageformula/hookunithpdisplayhidden.asm
;Modification to allow the Addition of more Daily Items
	.include dailyitems/hookdailyitems.asm	
;Map Table Inclusion
	.include maps/hookmaps.asm
;Modification to Allow Campaign Map Selection in Vs
	.include mapcases/hookmapcases.asm
;AI Datatable
	.include datatables/hookaitable.asm
;Entries for War Room CO Select
	.include datatables/hookwarroomcotable.asm
	
;Text Pointer Table
	.include text/hooktext.asm

;Fixes extended CO's palettes
	.include palettefix/hookpalettefix.asm
;Fixes extended CO's Battle Animation Sprites
	.include banimspritefix/hookbanimspritefix.asm
;Fixes CO Dossier Text selection
	.include dossiertextfix/hookdossiertextfix.asm
;Fixes Expanded CO Mugs
	.include smallmugfix/hooksmallmugfix.asm
;Always makes bonus COs available
	.include unlockbonuscos/hookunlockbonus.asm
;Expansion Code to allow daily skills and unit changes
	.include awplaunchstun/hooklaunchstun.asm
;Expansion to allow additional CO-Based income
	.include incomemodifier/hookincomemodifier.asm
;Expansion to CO Power Charging Subroutine
	.include PowerChargingModifier/hookpowercharge.asm
;Expansion to Display
	.include defencedisplay/hookdefdisplay.asm
;Expansion to Allow more Icons eg Vet/Stun
	.include customuniticons/hookcustomuniticonsdisp.asm
;Hook to Allow Title Screen Quick Bypass
	.include quickload/hookquickload.asm
;Hook to Allow for Disabling SCOPs on the menu
	.include Powerchargingmodifier/hookpowerSCOPdisable.asm
;Hook to Modify the Save Functions
	.include Save/hooksave.asm	
	
;Personal CO Power Palette Hacks
;	.include personalcoppalette/hookpersonalcoppalette.asm
;Meteor Flipping Code (WRH2) to Allow Missile
;	.include meteorgraphicflip/hookmeteorgraphicflip.asm

;*Musical Hacks and Soundtrack*
;Music Table Additions
	.include music/hookmusic.asm
	.include music/hooksappyexpansion.asm
;Free S/COP Musical Assignment
	.include freecopmusic/hookfreecopmusic.asm
	.include freecopmusic/hookfreescopmusic.asm
	


;This Section is for Floating Location Code
.org 0x080854A0
	.include defencedisplay/coredefdisplay.asm
	
.org 0x085D9320
	.include text/texttable.asm
	.include text/script.asm
	
.org 0x08618000
;Floating Code
	.include common/commonfunctions.asm
	.include PowerChargingModifier/corepowercharge.asm
	.include repairexpansion/corerepairexpansion.asm		
	.align
	.include datatables/macroco.asm
	.include maps/coremaps.asm
	.align

	
;Infinite COs	
	.include datatables/corecomain.asm
	.include palettefix/corepalettefix.asm
	.include dossiertextfix/coredossiertextfix.asm
	.include smallmugfix/coresmallmugfix.asm
	
	.include unlockbonuscos/coreunlockbonus.asm
	.include awplaunchstun/corelaunchstun.asm
	.include damageformula/coredamageformula.asm
	.include damageformula/coredamagerange.asm	
	.include massdamageexpansion/coremassdamageclearcapture.asm	
	.include massdamageexpansion/coreterrainmassdamage.asm
	.include incomemodifier/coreincomemodifier.asm

	.include defencedisplay/blinkcheckexpanded.asm
	.include powerchargingmodifier/corepowerSCOPdisable.asm
	.align
	.include dailyitems/coredailycoplauncher.asm
 	
;Expansion to Meteor Strike Power Targeting Modes
	.include MeteorPowerExpansion/meteorpowerexpansionmain.asm
		
;Floating Data Tables	
	.include freecopmusic/corefreescopmusic.asm
	.align
	.include graphics/coregraphics.asm
;Outrealm COs Text Blobs
	.include text/outrealmmain.asm	
	
;AWP Data Expansion
	.align
	.include customuniticons/corecustomuniticonsdisp.asm
;Music Import
	.include music/coremusic.asm
	
;Scripts
	.include dailyitems/scriptdailyitems.asm

;	.include personalcoppalette/corepersonalcoppalette.asm
;	.include meteorgraphicflip/coremeteorgraphicflip.asm	
	

.close

;blank line

;Script - Game's Text Script
;script.asm"

.relativeinclude on
;Campaign Text
.include "campaign/prologue.asm"
.include "campaign/missiondescs.asm"
.include "campaign/victoryterms.asm"
.include "campaign/areatitles.asm"

;Orange Star Campaign
.include "campaign/orangestar/orange1.asm"
.include "campaign/orangestar/orange2.asm"
.include "campaign/orangestar/orange3.asm"
.include "campaign/orangestar/orange4.asm"
.include "campaign/orangestar/orange5.asm"
.include "campaign/orangestar/orange6.asm"
.include "campaign/orangestar/orange7.asm"
.include "campaign/orangestar/orange8.asm"
.include "campaign/orangestar/orangeintro.asm"

;Orange Star Hard Campaign
.include "campaign/orangestar/orange9.asm"
.include "campaign/orangestar/orange10.asm"
.include "campaign/orangestar/orange11.asm"
.include "campaign/orangestar/orange12.asm"
.include "campaign/orangestar/orange13.asm"
.include "campaign/orangestar/orange14.asm"
.include "campaign/orangestar/orange15.asm"
.include "campaign/orangestar/orange16.asm"

;Blue Moon Campaign
.include "campaign/bluemoon/blueintro.asm"
.include "campaign/bluemoon/blue1.asm"
.include "campaign/bluemoon/blue2.asm"
.include "campaign/bluemoon/blue3.asm"
.include "campaign/bluemoon/blue4.asm"
.include "campaign/bluemoon/blue5.asm"
.include "campaign/bluemoon/blue6.asm"
.include "campaign/bluemoon/blue7.asm"
.include "campaign/bluemoon/blue8.asm"

;Green Earth Campaign
.include "campaign/greenearth/greenintro.asm"
.include "campaign/greenearth/green1.asm"
.include "campaign/greenearth/green2.asm"
.include "campaign/greenearth/green3.asm"
.include "campaign/greenearth/green4.asm"
.include "campaign/greenearth/green5.asm"
.include "campaign/greenearth/green6.asm"
.include "campaign/greenearth/green7.asm"
.include "campaign/greenearth/green8.asm"

;Yellow Comet Campaign
.include "campaign/yellowcomet/yellowintro.asm"
.include "campaign/yellowcomet/yellow1.asm"
.include "campaign/yellowcomet/yellow2.asm"
.include "campaign/yellowcomet/yellow3.asm"
.include "campaign/yellowcomet/yellow4.asm"
.include "campaign/yellowcomet/yellow5.asm"
.include "campaign/yellowcomet/yellow6.asm"
.include "campaign/yellowcomet/yellow7.asm"
.include "campaign/yellowcomet/yellow8.asm"

;Black Hole Campaign
.include "campaign/blackhole/blackintro.asm"
.include "campaign/blackhole/blackoutro.asm"

;Names
.include "names/unitnames.asm"
.include "names/weaponnames.asm"
.include "names/countrynames.asm"
.include "names/terrainnames.asm"
.include "names/mapcasenames.asm"
.include "names/songtitles.asm"
.include "names/mapnames.asm"	
.include "names/campaignnames.asm"

;Descriptive Text
.include "descs/terraindescs.asm"
.include "descs/movementdescs.asm"
.include "descs/visiondescs.asm"
.include "descs/fueldescs.asm"
.include "descs/commonunitdescs.asm"

.include "descs/infantrydesc.asm"
.include "descs/mechdesc.asm"
.include "descs/recondesc.asm"
.include "descs/tankdesc.asm"
.include "descs/mdtankdesc.asm"
.include "descs/artillerydesc.asm"
.include "descs/rocketdesc.asm"
.include "descs/missiledesc.asm"
.include "descs/antiairdesc.asm"
.include "descs/apcdesc.asm"
.include "descs/neotankdescs.asm"

.include "descs/fighterdesc.asm"
.include "descs/bomberdesc.asm"
.include "descs/battlecopterdesc.asm"
.include "descs/transportcopterdesc.asm"

.include "descs/battleshipdesc.asm"
.include "descs/cruiserdesc.asm"
.include "descs/landerdesc.asm"
.include "descs/submarinedesc.asm"

;GUI and System Messages
.include "gui/menucommands.asm"
.include "gui/infomenus.asm"
.include "gui/mainmenu.asm"
.include "gui/gamesetup.asm"
.include "gui/systemmessages.asm"
.include "gui/linkmenu.asm"
.include "gui/mapeditor.asm"
.include "gui/battlemaps.asm"

;Commanding Officer Profiles
.include "commander/nell.asm"
.include "commander/andy.asm"
.include "commander/max.asm"
.include "commander/sami.asm"
.include "commander/hachi.asm"

.include "commander/olaf.asm"
.include "commander/grit.asm"
.include "commander/colin.asm"

.include "commander/kanbei.asm"
.include "commander/sonja.asm"
.include "commander/sensei.asm"

.include "commander/eagle.asm"
.include "commander/drake.asm"
.include "commander/jess.asm"

.include "commander/flak.asm"
.include "commander/lash.asm"
.include "commander/adder.asm"
.include "commander/hawke.asm"
.include "commander/sturm.asm"

; Original offset: 0x08608038
String2602:
	.db 0x0,0x0
.relativeinclude off

;.endarea	


;Blank Line	

;Script - Game's Text Script
;script.asm

;Equs for Scripting and control codes
TextNL equ 0x0D
TextWait equ 0x0E
TextConfirm equ 0x0F
TextBlack equ 0x80
TextBlue equ 0x83
TextRed equ 0x82
TextGray equ 0x81
TextGrey equ 0x81
TextYesNo equ 0x17
TextIcon equ 0x09
TextEnd equ .byte 0x0


;.area 0x37710

;Campaign Text
.include text/campaign/prologue.asm
.include text/campaign/missiondescs.asm
.include text/campaign/victoryterms.asm
.include text/campaign/areatitles.asm

;Orange Star Campaign
.include text/campaign/orangestar/orange1.asm
.include text/campaign/orangestar/orange2.asm
.include text/campaign/orangestar/orange3.asm
.include text/campaign/orangestar/orange4.asm
.include text/campaign/orangestar/orange5.asm
.include text/campaign/orangestar/orange6.asm
.include text/campaign/orangestar/orange7.asm
.include text/campaign/orangestar/orange8.asm
.include text/campaign/orangestar/orangeintro.asm

;Orange Star Hard Campaign
.include text/campaign/orangestar/orange9.asm
.include text/campaign/orangestar/orange10.asm
.include text/campaign/orangestar/orange11.asm
.include text/campaign/orangestar/orange12.asm
.include text/campaign/orangestar/orange13.asm
.include text/campaign/orangestar/orange14.asm
.include text/campaign/orangestar/orange15.asm
.include text/campaign/orangestar/orange16.asm

;Blue Moon Campaign
.include text/campaign/bluemoon/blueintro.asm
.include text/campaign/bluemoon/blue1.asm
.include text/campaign/bluemoon/blue2.asm
.include text/campaign/bluemoon/blue3.asm
.include text/campaign/bluemoon/blue4.asm
.include text/campaign/bluemoon/blue5.asm
.include text/campaign/bluemoon/blue6.asm
.include text/campaign/bluemoon/blue7.asm
.include text/campaign/bluemoon/blue8.asm

;Green Earth Campaign
.include text/campaign/greenearth/greenintro.asm
.include text/campaign/greenearth/green1.asm
.include text/campaign/greenearth/green2.asm
.include text/campaign/greenearth/green3.asm
.include text/campaign/greenearth/green4.asm
.include text/campaign/greenearth/green5.asm
.include text/campaign/greenearth/green6.asm
.include text/campaign/greenearth/green7.asm
.include text/campaign/greenearth/green8.asm

;Yellow Comet Campaign
.include text/campaign/yellowcomet/yellowintro.asm
.include text/campaign/yellowcomet/yellow1.asm
.include text/campaign/yellowcomet/yellow2.asm
.include text/campaign/yellowcomet/yellow3.asm
.include text/campaign/yellowcomet/yellow4.asm
.include text/campaign/yellowcomet/yellow5.asm
.include text/campaign/yellowcomet/yellow6.asm
.include text/campaign/yellowcomet/yellow7.asm
.include text/campaign/yellowcomet/yellow8.asm

;Black Hole Campaign
.include text/campaign/blackhole/blackintro.asm
.include text/campaign/blackhole/blackoutro.asm

;Names
.include text/names/unitnames.asm
.include text/names/weaponnames.asm
.include text/names/countrynames.asm
.include text/names/terrainnames.asm
.include text/names/mapcasenames.asm
.include text/names/songtitles.asm
.include text/names/mapnames.asm	
.include text/names/campaignnames.asm

;Descriptive Text
.include text/descs/terraindescs.asm
.include text/descs/movementdescs.asm
.include text/descs/visiondescs.asm
.include text/descs/fueldescs.asm
.include text/descs/commonunitdescs.asm

.include text/descs/infantrydesc.asm
.include text/descs/mechdesc.asm
.include text/descs/recondesc.asm
.include text/descs/tankdesc.asm
.include text/descs/mdtankdesc.asm
.include text/descs/artillerydesc.asm
.include text/descs/rocketdesc.asm
.include text/descs/missiledesc.asm
.include text/descs/antiairdesc.asm
.include text/descs/apcdesc.asm
.include text/descs/neotankdescs.asm

.include text/descs/fighterdesc.asm
.include text/descs/bomberdesc.asm
.include text/descs/battlecopterdesc.asm
.include text/descs/transportcopterdesc.asm

.include text/descs/battleshipdesc.asm
.include text/descs/cruiserdesc.asm
.include text/descs/landerdesc.asm
.include text/descs/submarinedesc.asm

;GUI and System Messages
.include text/gui/menucommands.asm
.include text/gui/infomenus.asm
.include text/gui/mainmenu.asm
.include text/gui/gamesetup.asm
.include text/gui/systemmessages.asm
.include text/gui/linkmenu.asm
.include text/gui/mapeditor.asm
.include text/gui/battlemaps.asm

;Commanding Officer Profiles
.include text/commander/nell.asm
.include text/commander/andy.asm
.include text/commander/max.asm
.include text/commander/sami.asm
.include text/commander/hachi.asm

.include text/commander/olaf.asm
.include text/commander/grit.asm
.include text/commander/colin.asm

.include text/commander/kanbei.asm
.include text/commander/sonja.asm
.include text/commander/sensei.asm

.include text/commander/eagle.asm
.include text/commander/drake.asm
.include text/commander/jess.asm

.include text/commander/flak.asm
.include text/commander/lash.asm
.include text/commander/adder.asm
.include text/commander/hawke.asm
.include text/commander/sturm.asm

; Original offset: 0x08608038
String2602:
	.ascii 0x0,0x0

;.endarea	


;Blank Line	

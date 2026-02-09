;unit datatable editor - advance wars project
;hookunittable.asm"

;unit stats themselves
.org 0x085d5b18
;	.include "datatables/unitstats/infantryunit.asm"
;	.include "datatables/unitstats/mechunit.asm"
;	.include "datatables/unitstats/mdtankunit.asm"
;	.include "datatables/unitstats/null4unit.asm"
;	.include "datatables/unitstats/tankunit.asm"
;	.include "datatables/unitstats/reconunit.asm"
;	.include "datatables/unitstats/apcunit.asm"
;	.include "datatables/unitstats/neotankunit.asm"
;	.include "datatables/unitstats/null9unit.asm"
;	.include "datatables/unitstats/artilleryunit.asm"
;	.include "datatables/unitstats/rocketunit.asm"
;	.include "datatables/unitstats/nullcunit.asm"
;	.include "datatables/unitstats/nulldunit.asm"
;	.include "datatables/unitstats/antiairunit.asm"
;	.include "datatables/unitstats/missileunit.asm"
;	.include "datatables/unitstats/fighterunit.asm"
;	.include "datatables/unitstats/bomberunit.asm"
;	.include "datatables/unitstats/null12unit.asm"
;	.include "datatables/unitstats/battlecopterunit.asm"
;	.include "datatables/unitstats/transportcopterunit.asm"
;	.include "datatables/unitstats/battleshipunit.asm"
;	.include "datatables/unitstats/cruiserunit.asm"
;	.include "datatables/unitstats/landerunit.asm"
;	.include "datatables/unitstats/submarineunit.asm"


.org 0x085d573c
;supply types tables and fuel useage tables
	.include "datatables/unitstats/suppliedby/suppliedbybase.asm"
	.include "datatables/unitstats/fueluseage/fueluseagetypeground.asm"
	.include "datatables/unitstats/suppliedby/suppliedbyairport.asm"
	.include "datatables/unitstats/fueluseage/fueluseagetypeplane.asm"
	.include "datatables/unitstats/suppliedby/suppliedbycopter.asm"
	.include "datatables/unitstats/fueluseage/fueluseagetypecopter.asm"
	.include "datatables/unitstats/suppliedby/suppliedbyport.asm"
	.include "datatables/unitstats/fueluseage/fueluseagetypesea.asm"
	
	
.org 0x085d63b8
;transporting units type tables
	.include "datatables/unitstats/transportcapabilities/transporttypeapc.asm"
	.include "datatables/unitstats/transportcapabilities/transporttypetcopter.asm"
	.include "datatables/unitstats/transportcapabilities/transporttypelander.asm"
	.include "datatables/unitstats/transportcapabilities/transporttypecruiser.asm"
	
;.org 0x084995c2
;;editing the unit capabilities
;	.include "datatables/unitstats/unitabilities/supplycapability.asm"
;	.include "datatables/unitstats/unitabilities/capturecapability.asm"
	
;code modifications
;	.include "datatables/unitstats/codemodifications/hookextracaptureunit.asm"

;blank line

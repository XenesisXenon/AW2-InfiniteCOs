;Unit Datatable Editor - Advance Wars Project
;hookunittable.asm"

;Unit Stats Themselves
.org 0x085D5B18
;	.include "datatables/UnitStats/InfantryUnit.asm"
;	.include "datatables/UnitStats/MechUnit.asm"
;	.include "datatables/UnitStats/MdTankUnit.asm"
;	.include "datatables/UnitStats/Null4Unit.asm"
;	.include "datatables/UnitStats/TankUnit.asm"
;	.include "datatables/UnitStats/ReconUnit.asm"
;	.include "datatables/UnitStats/APCUnit.asm"
;	.include "datatables/UnitStats/NeotankUnit.asm"
;	.include "datatables/UnitStats/Null9Unit.asm"
;	.include "datatables/UnitStats/ArtilleryUnit.asm"
;	.include "datatables/UnitStats/RocketUnit.asm"
;	.include "datatables/UnitStats/NullCUnit.asm"	
;	.include "datatables/UnitStats/NullDUnit.asm"	
;	.include "datatables/UnitStats/AntiairUnit.asm"
;	.include "datatables/UnitStats/MissileUnit.asm"
;	.include "datatables/UnitStats/FighterUnit.asm"
;	.include "datatables/UnitStats/BomberUnit.asm"
;	.include "datatables/UnitStats/Null12Unit.asm"	
;	.include "datatables/UnitStats/BattlecopterUnit.asm"
;	.include "datatables/UnitStats/TransportcopterUnit.asm"
;	.include "datatables/UnitStats/BattleshipUnit.asm"
;	.include "datatables/UnitStats/CruiserUnit.asm"
;	.include "datatables/UnitStats/LanderUnit.asm"
;	.include "datatables/UnitStats/SubmarineUnit.asm"


.org 0x085D573C
;Supply Types Tables and Fuel Useage Tables
	.include "datatables/UnitStats/SuppliedBy/Suppliedbybase.asm"
	.include "datatables/UnitStats/Fueluseage/Fueluseagetypeground.asm"
	.include "datatables/UnitStats/SuppliedBy/Suppliedbyairport.asm"
	.include "datatables/UnitStats/Fueluseage/Fueluseagetypeplane.asm"	
	.include "datatables/UnitStats/SuppliedBy/Suppliedbycopter.asm"
	.include "datatables/UnitStats/Fueluseage/Fueluseagetypecopter.asm"
	.include "datatables/UnitStats/SuppliedBy/Suppliedbyport.asm"
	.include "datatables/UnitStats/Fueluseage/Fueluseagetypesea.asm"
	
	
.org 0x085D63B8	
;Transporting Units Type Tables
	.include "datatables/UnitStats/TransportCapabilities/TransportTypeAPC.asm"
	.include "datatables/UnitStats/TransportCapabilities/TransportTypeTCopter.asm"
	.include "datatables/UnitStats/TransportCapabilities/TransportTypeLander.asm"
	.include "datatables/UnitStats/TransportCapabilities/TransportTypeCruiser.asm"
	
;.org 0x084995C2
;;Editing the Unit Capabilities
;	.include "datatables/UnitStats/UnitAbilities/SupplyCapability.asm"
;	.include "datatables/UnitStats/UnitAbilities/CaptureCapability.asm"
	
;Code Modifications
;	.include "datatables/UnitStats/CodeModifications/HookExtraCaptureUnit.asm"

;Blank Line	

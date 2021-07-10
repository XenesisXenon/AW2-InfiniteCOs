;Common Definitions

BaseMapPointer 			equ 0x08499590
BaseUnitMemory			equ 0x08499594
BaseUnitPointer 		equ 0x08499598	;Fix

UnitDataTable			equ 0x085D5B18

Campaign_HeaderTable		equ 0x08615194



;BaseCOGraphicsAbilitiesTablePointer	equ 0x08700000
;BaseCOStatsTablePointer		equ 0x08705000
;BaseCOUnitAttributesTable		equ 0x0870E000

;coGFXTable				equ 0x08700000
;coDatatable 				equ 0x08705000
;PHackUltraPointer			equ 0x0870E000

coGFXTable			equ	Anchor_EndOfEvent
coDatatable			equ	coGFXTable + ((MaxCOID+2)*coGFX_Length)
PHackUltraPointer		equ	coDatatable + ((MaxCOID+2)*coData_Length)
MapHeaderTable			equ	PHackUltraPointer + ((MaxCOID+2)*coUnitAtrib_Length)

;MapHeaderTable 				equ 0x0871B000

BaseCOGraphicsAbilitiesTablePointer	equ	coGFXTable
BaseCOStatsTablePointer			equ	coDatatable
BaseCOUnitAttributesTable		equ	PHackUltraPointer

coGFX_Length				equ 68
coData_Length				equ 260
coData_Power_Length			equ 68
MapHeader_Length			equ 0x5C
coUnitAtrib_Length			equ 624
coUnitAtrib_COPLength			equ 208
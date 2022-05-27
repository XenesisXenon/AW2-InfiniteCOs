;Common Definitions

;Unit Types
Unit_None		equ 0x0
Unit_Infantry		equ 0x1
Unit_Mech		equ 0x2
Unit_MidTank		equ 0x3
Unit_Tank		equ 0x5
Unit_Recon		equ 0x6
Unit_APC		equ 0x7
Unit_Neotank		equ 0x8
Unit_Artillery		equ 0xA
Unit_Rockets		equ 0xB
Unit_AntiAir		equ 0xE
Unit_Missiles		equ 0xF
Unit_Fighter		equ 0x10
Unit_Bomber		equ 0x11
Unit_BattleCopter	equ 0x13
Unit_TransportCopter	equ 0x14
Unit_Battleship		equ 0x15
Unit_Cruiser		equ 0x16
Unit_Lander		equ 0x17
Unit_Sub		equ 0x18
Unit_DivedSub		equ 0x19

;Empty Slots
;0x4
;0x9
;0xC
;0xD
;0x12

;Convert Units from AWDS Maps to AW2 units
Unit_Megatank		equ Unit_Neotank
Unit_PipeRunner		equ Unit_Rockets
Unit_Stealth		equ Unit_Fighter
Unit_BlackBomb		equ Unit_Bomber
Unit_BlackBoat		equ Unit_Lander
Unit_Carrier		equ Unit_Cruiser
Unit_Oozium		equ Unit_Infantry

;Convert Units from AW4 Maps to AW2 units
Unit_Wartank		equ Unit_Neotank
Unit_Bike		equ Unit_Infantry
Unit_AntiTank		equ Unit_Artillery
Unit_Flare		equ Unit_Recon
Unit_Rig		equ Unit_APC
Unit_Duster		equ Unit_BattleCopter
Unit_Gunboat		equ Unit_Lander
Unit_Seaplane		equ Unit_BattleCopter


;AI Unit Classes
AICaptureUnit 		equ 0x1
AICarryFootSoldiers 	equ 0x2
AIUnknownType 		equ 0x3
AIIndirectCombat 	equ 0x4
AIDirectCombat 		equ 0x5
AICarryLandUnits 	equ 0x6
AIUnknownType2 		equ 0x7

;AI Unit State Types (Scripts)
AIUnitActive		equ 0x4
AIUnitDefensive		equ 0x0

;Movement Types
MoveFoot 		equ 0x0
MoveMech 		equ 0x1
MoveTread 		equ 0x2
MoveTyre 		equ 0x3
MoveAir 		equ 0x4
MoveShip 		equ 0x5
MoveNavalTransport 	equ 0x6

;Unit Classes
ClassSoldier 	equ 0x0
ClassVehicle 	equ 0x1
ClassPlane 	equ 0x2
ClassCopter	equ 0x3
ClassNaval 	equ 0x4

;Built By
BuildBase 	equ 0x01
BuildBaseB	equ 0x02
BuildBaseC	equ 0x04
BuildPort 	equ 0x20
BuildAirport 	equ 0x10

;AI Bit Matrix
AITargetGround 		equ 0x04
AITargetAir 		equ 0x01
AITargetSea 		equ 0x02
AITargetSub 		equ 0x08

;B-Button Range Displays
BButtonDirect 			equ 0x1
BButtonIndirect 		equ 0x0

;Gathers
GatherUnitMinRange		equ 14
GatherUnitMovement		equ 9
GatherUnitClass			equ 24
GatherUnit_MinRange		equ 14

;AI Behaviour Types
AIBehaviour_Stay		equ 0	;Won't move until threat in range
AIBehaviour_AttackHQ		equ 1	;Advances toward enemy HQ
AIBehaviour_FollowInf		equ 2	;Follows infantry and landers
AIBehaviour_Properties		equ 3	;Moves to unowned props, silos
AIBehaviour_Standard		equ 4	;Standard Behaviour
AIBehaviour_Defence		equ 5	;Groups up with other units/infs
AIBehaviour_Zoning		equ 6	;General smarter defence behaviour, doesn't work for air units
AIBehaviour_GuardHQ		equ 7	;Retreats toward allied HQ

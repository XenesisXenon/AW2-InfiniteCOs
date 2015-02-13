;ArtilleryUnit.asm
;Artillery Stats


;Unit Name ID
	.dh 2241
	
;Primary Weapon Name ID
	.dh 2255
	
;Secondary Weapon Name ID	
	.dh 2266
	
;Unit Price for 1HP
	.dh 600
	
;Unknown
	.dh 0

;Movement
	.db 5
	
;Maximum Ammunition
	.db 9
	
;Vision Range
	.db 1
	
;Unknown
	.db 0
	
;Firing Range
	.db 2,3
	
;Maximum Fuel
	.db 50
	
;B-Button Range Display Type.
	.db BButtonIndirect
	
;Unknown
	.dh 0
	
;Transport Ability
	.dw BooleanOff

;Unit Class
	.db ClassVehicle
	
;Movement Class
	.db MoveTread
	
;Facilities this unit can be built from
	.db BuildBase
	
;AI Unit AI
	.db AIIndirectCombat

;AI Priority Attack Targeting
	.db AITargetGround+AITargetSea

;AI Considers this a Unit of Type
	.db AITargetGround

;Unknown
	.db 00	
	
;Damage Chart (Primary Weapon)
;Infantry, Mech, Medium Tank, UID4
	.db 90,85,45,00
;Tank, Recon, APC, Neotank	
	.db 70,80,70,40
;UID9, Artillery, Rockets, UIDC	
	.db 0,75,80,0
;UIDD, Antiair, Missile, Fighter	
	.db 0,75,80,0
;Bomber, UID12, B-Copter, T-Copter	
	.db 0,0,0,0
;Battleship, Cruiser, Lander, Sub	
	.db 40,65,55,60
;Dived Sub	
	.db 00	
	
;Unknown
	.db 0	
	
;Damage Chart (Secondary Weapon)
;Infantry, Mech, Medium Tank, UID4
	.db 0,0,0,0
;Tank, Recon, APC, Neotank	
	.db 0,0,0,0
;UID9, Artillery, Rockets, UIDC	
	.db 0,0,0,0
;UIDD, Antiair, Missile, Fighter	
	.db 0,0,0,0
;Bomber, UID12, B-Copter, T-Copter	
	.db 0,0,0,0
;Battleship, Cruiser, Lander, Sub	
	.db 0,0,0,00
;Dived Sub	
	.db 0

;Padding
	.dh 00

;Unit is Supplied on This Terrain
	.dw SuppliedByBase
	
;Unit Uses Fuel on These Tiles
	.dw FuelUseageTypeGround
	
;Blank Line

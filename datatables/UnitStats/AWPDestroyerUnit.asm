;Null9Unit.asm
;Null Unit 9 Stats
;This is the Unit Slot 9, Normally unavailable.


;Unit Name ID
	.dh 3318
	
;Primary Weapon Name ID
	.dh 2255
	
;Secondary Weapon Name ID	
	.dh 2266
	
;Unit Price for 1HP
	.dh 1200
	
;Unknown
	.dh 0

;Movement
	.db 6
	
;Maximum Ammunition
	.db 5
	
;Vision Range
	.db 2
	
;Unknown
	.db 0
	
;Firing Range
	.db 1,2
	
;Maximum Fuel
	.db 99
	
;B-Button Range Display Type.
	.db BButtonDirect
	
;Unknown
	.dh 0
	
;Transport Ability
	.dw BooleanOff

;Unit Class
	.db ClassNaval
	
;Movement Class
	.db AWPMoveLightShip
	
;Facilities this unit can be built from
	.db BuildPort
	
;AI Unit AI
	.db AIDirectCombat

;AI Priority Attack Targeting
	.db AITargetGround+AITargetSea

;AI Considers this a Unit of Type
	.db AITargetSea
	
;Unknown
	.db 0	
		
;Damage Chart (Primary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 80,80,55,35
;Tank, Train, APC, Neotank	
	.db 70,55,90,35
;Destroyer, Artillery, Rockets, Gunboat	
	.db 22,85,90,55
;Carrier, Antiair, Missile, Fighter	
	.db 20,90,90,0
;Bomber, Duster, B-Copter, T-Copter	
	.db 0,0,0,0
;Battleship, Cruiser, Lander, Sub	
	.db 20,25,45,25
;Dived Sub	
	.db 0

;Unknown
	.db 0
	
;Damage Chart (Secondary Weapon)
;Infantry, Mech, Medium Tank, UID4
	.db 00,00,0,0
;Tank, Recon, APC, Neotank	
	.db 00,00,00,00
;UID9, Artillery, Rockets, UIDC	
	.db 00,00,00,00
;UIDD, Antiair, Missile, Fighter	
	.db 00,00,00,00
;Bomber, UID12, B-Copter, T-Copter	
	.db 00,00,00,00
;Battleship, Cruiser, Lander, Sub	
	.db 00,00,00,00
;Dived Sub	
	.db 00

;Padding
	.dh 00

;Unit is Supplied on This Terrain
	.dw SuppliedByPort
	
;Unit Uses Fuel on These Tiles
	.dw FuelUseageTypeSea
	
;Blank Line

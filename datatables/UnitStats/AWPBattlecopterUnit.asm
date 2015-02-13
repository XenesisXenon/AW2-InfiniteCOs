;BattlecopterUnit.asm
;Battle Copter Stats


;Unit Name ID
	.dh 2247
	
;Primary Weapon Name ID
	.dh 2260
	
;Secondary Weapon Name ID	
	.dh 2253
	
;Unit Price for 1HP
	.dh 900
	
;Unknown
	.dh 0

;Movement
	.db 6
	
;Maximum Ammunition
	.db 6
	
;Vision Range
	.db 2
	
;Unknown
	.db 0
	
;Firing Range
	.db 1,1
	
;Maximum Fuel
	.db 99
	
;B-Button Range Display Type.
	.db BButtonDirect
	
;Unknown
	.dh 0
	
;Transport Ability
	.dw TransportTypeSCopter

;Unit Class
	.db ClassCopter
	
;Movement Class
	.db AWPMoveAir
	
;Facilities this unit can be built from
	.db BuildAirport
	
;AI Unit AI
	.db AIDirectCombat

;AI Priority Attack Targeting
	.db AITargetGround+AITargetSea

;AI Considers this a Unit of Type
	.db AITargetAir
	
;Unknown
	.db 0	
	
;Damage Chart (Primary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 0,0,45,20
;Tank, Railcannon, APC, Neotank	
	.db 70,45,70,35
;Destroyer, Artillery, Rockets, Gunboat	
	.db 45,65,75,85
;Carrier, Antiair, Missile, Fighter	
	.db 25,10,55,0
;Bomber, Duster, B-Copter, T-Copter	
	.db 0,0,0,0
;Battleship, Cruiser, Lander, Sub	
	.db 25,5,25,25
;Dived Sub	
	.db 0	
	
;Unknown
	.db 0	
	
;Damage Chart (Secondary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 65,65,8,1
;Tank, Railcannon, APC, Neotank	
	.db 8,8,20,1
;Destroyer, Artillery, Rockets, Gunboat	
	.db 0,25,35,0
;Carrier, Antiair, Missile, Fighter	
	.db 0,1,25,0
;Bomber, Duster, B-Copter, T-Copter	
	.db 0,0,65,85
;Battleship, Cruiser, Lander, Sub	
	.db 0,0,0,0
;Dived Sub	
	.db 0

;Padding
	.dh 00

;Unit is Supplied on This Terrain
	.dw SuppliedByAirport
	
;Unit Uses Fuel on These Tiles
	.dw FuelUseageTypeCopter
	
;Blank Line

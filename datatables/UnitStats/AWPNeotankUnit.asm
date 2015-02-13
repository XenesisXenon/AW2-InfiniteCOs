;NeotankUnit.asm
;Neotank Stats


;Unit Name ID
	.dh 2236
	
;Primary Weapon Name ID
	.dh 2267
	
;Secondary Weapon Name ID	
	.dh 2253
	
;Unit Price for 1HP
	.dh 2200
	
;Unknown
	.dh 0

;Movement
	.db 4
	
;Maximum Ammunition
	.db 5
	
;Vision Range
	.db 2
	
;Unknown
	.db 0
	
;Firing Range
	.db 1,1
	
;Maximum Fuel
	.db 50
	
;B-Button Range Display Type.
	.db BButtonDirect
	
;Unknown
	.dh 0
	
;Transport Ability
	.dw TransportTypeLandVehicle

;Unit Class
	.db ClassVehicle
	
;Movement Class
	.db AWPMoveHeavyTread
	
;Facilities this unit can be built from
	.db BuildBase
	
;AI Unit AI
	.db AIDirectCombat

;AI Priority Attack Targeting
	.db AITargetGround

;AI Considers this a Unit of Type
	.db AITargetGround
	
;Unknown
	.db 0	
		
;Damage Chart (Primary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 0,0,75,40
;Tank, Train, APC, Neotank	
	.db 85,75,105,55
;Destroyer, Artillery, Rockets, Gunboat	
	.db 0,105,105,65
;Carrier, Antiair, Missile, Fighter	
	.db 12,105,105,0
;Bomber, Duster, B-Copter, T-Copter	
	.db 0,0,0,0
;Battleship, Cruiser, Lander, Sub	
	.db 12,14,28,14
;Dived Sub	
	.db 0	
	
;Unknown
	.db 0
	
;Damage Chart (Secondary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 95,95,10,1
;Tank, Train, APC, Neotank	
	.db 10,10,45,1
;Destroyer, Artillery, Rockets, Gunboat	
	.db 0,45,65,0
;Carrier, Antiair, Missile, Fighter	
	.db 0,10,65,0
;Bomber, Duster, B-Copter, T-Copter	
	.db 0,0,35,45
;Battleship, Cruiser, Lander, Sub	
	.db 0,0,0,0
;Dived Sub	
	.db 0	

;Padding
	.dh 00

;Unit is Supplied on This Terrain
	.dw SuppliedByBase
	
;Unit Uses Fuel on These Tiles
	.dw FuelUseageTypeGround
	
;Blank Line

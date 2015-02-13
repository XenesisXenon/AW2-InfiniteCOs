;FighterUnit.asm
;Fighter Stats


;Unit Name ID
	.dh 2245
	
;Primary Weapon Name ID
	.dh 2262
	
;Secondary Weapon Name ID	
	.dh 2266
	
;Unit Price for 1HP
	.dh 2000
	
;Unknown
	.dh 0

;Movement
	.db 9
	
;Maximum Ammunition
	.db 9
	
;Vision Range
	.db 5
	
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
	.dw BooleanOff

;Unit Class
	.db ClassPlane
	
;Movement Class
	.db AWPMoveAir
	
;Facilities this unit can be built from
	.db BuildAirport
	
;AI Unit AI
	.db AIDirectCombat

;AI Priority Attack Targeting
	.db AITargetAir

;AI Considers this a Unit of Type
	.db AITargetAir	
	
;Unknown
	.db 0	
	
;Damage Chart (Primary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 0,0,0,0
;Tank, Train, APC, Neotank	
	.db 0,0,0,0
;Destroyer, Artillery, Rockets, Gunboat	
	.db 0,0,0,0
;Carrier, Antiair, Missile, Fighter	
	.db 0,0,0,55
;Bomber, Duster, B-Copter, T-Copter	
	.db 65,80,85,95
;Battleship, Cruiser, Lander, Sub	
	.db 0,0,0,0
;Dived Sub	
	.db 0	
	
;Unknown
	.db 0	
		
;Damage Chart (Secondary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 0,0,0,0
;Tank, Train, APC, Neotank	
	.db 0,0,0,0
;Destroyer, Artillery, Rockets, Gunboat	
	.db 0,0,0,0
;Carrier, Antiair, Missile, Fighter	
	.db 0,0,0,0
;Bomber, Duster, B-Copter, T-Copter	
	.db 0,0,0,0
;Battleship, Cruiser, Lander, Sub	
	.db 0,0,0,0
;Dived Sub	
	.db 0	

;Padding
	.dh 00

;Unit is Supplied on This Terrain
	.dw SuppliedByAirport
	
;Unit Uses Fuel on These Tiles
	.dw FuelUseageTypePlane
	
;Blank Line

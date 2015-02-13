;Null12Unit.asm
;Null Unit 12 Stats
;This is the Unit Slot 18, Normally unavailable.


;Unit Name ID
	.dh 3320
	
;Primary Weapon Name ID
	.dh 2253
	
;Secondary Weapon Name ID	
	.dh 2266
	
;Unit Price for 1HP
	.dh 1300
	
;Unknown
	.dh 0

;Movement
	.db 8
	
;Maximum Ammunition
	.db 9
	
;Vision Range
	.db 4
	
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
	.db AITargetAir+AITargetGround

;AI Considers this a Unit of Type
	.db AITargetAir
	
;Unknown
	.db 0	
		
;Damage Chart (Primary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 45,45,5,5
;Tank, Train, APC, Neotank	
	.db 8,5,15,1
;Destroyer, Artillery, Rockets, Gunboat	
	.db 0,15,20,0
;Carrier, Antiair, Missile, Fighter	
	.db 0,5,20,40
;Bomber, Duster, B-Copter, T-Copter	
	.db 45,55,75,90
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

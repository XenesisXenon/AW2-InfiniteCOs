;MDTankUnit.asm
;Medium Tank Stats


;Unit Name ID
	.dh 2237
	
;Primary Weapon Name ID
	.dh 2258
	
;Secondary Weapon Name ID	
	.dh 2253
	
;Unit Price for 1HP
	.dh 1200
	
;Unknown
	.dh 0

;Movement
	.db 5
	
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
	.db 0,0,55,35
;Tank, Train, APC, Neotank	
	.db 70,55,90,35
;Destroyer, Artillery, Rockets, Gunboat	
	.db 22,85,90,55
;Carrier, Antiair, Missile, Fighter	
	.db 10,90,90,0
;Bomber, Duster, B-Copter, T-Copter	
	.db 0,0,0,0
;Battleship, Cruiser, Lander, Sub	
	.db 10,12,22,12
;Dived Sub	
	.db 0	
	
;Unknown
	.db 0
	
;Damage Chart (Secondary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 80,80,5,1
;Tank, Train, APC, Neotank	
	.db 8,5,45,1
;Destroyer, Artillery, Rockets, Gunboat	
	.db 0,45,60,0
;Carrier, Antiair, Missile, Fighter	
	.db 0,8,60,0
;Bomber, Duster, B-Copter, T-Copter	
	.db 0,0,24,40
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

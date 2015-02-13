;TankUnit.asm
;Tank Stats


;Unit Name ID
	.dh 2238
	
;Primary Weapon Name ID
	.dh 2259
	
;Secondary Weapon Name ID	
	.dh 2253
	
;Unit Price for 1HP
	.dh 700
	
;Unknown
	.dh 0

;Movement
	.db 6
	
;Maximum Ammunition
	.db 6
	
;Vision Range
	.db 3
	
;Unknown
	.db 0
	
;Firing Range
	.db 1,1
	
;Maximum Fuel
	.db 60
	
;B-Button Range Display Type.
	.db BButtonDirect
	
;Unknown
	.dh 0
	
;Transport Ability
	.dw TransportTypeLandVehicle

;Unit Class
	.db ClassVehicle
	
;Movement Class
	.db AWPMoveLightTread
	
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
	.db 0,0,35,30
;Tank, Train, APC, Neotank	
	.db 55,35,75,20
;Destroyer, Artillery, Rockets, Gunboat	
	.db 18,70,85,55
;Carrier, Antiair, Missile, Fighter	
	.db 8,75,85,0
;Bomber, Duster, B-Copter, T-Copter	
	.db 0,0,0,0
;Battleship, Cruiser, Lander, Sub	
	.db 8,9,18,9
;Dived Sub	
	.db 0

;Unknown
	.db 0
	
;Damage Chart (Secondary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 70,70,5,1
;Tank, Train, APC, Neotank	
	.db 8,5,45,1
;Destroyer, Artillery, Rockets, Gunboat	
	.db 0,45,55,0
;Carrier, Antiair, Missile, Fighter	
	.db 0,8,55,0
;Bomber, Duster, B-Copter, T-Copter	
	.db 0,0,18,40
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

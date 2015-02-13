;Null4Unit.asm
;Null Unit 4 Stats
;This is the Unit Slot 4, Normally unavailable.
;Anti-Tank

;Unit Name ID
	.dh 3316
	
;Primary Weapon Name ID
	.dh 2258
	
;Secondary Weapon Name ID	
	.dh 2266
	
;Unit Price for 1HP
	.dh 1200
	
;Unknown
	.dh 0

;Movement
	.db 4
	
;Maximum Ammunition
	.db 6
	
;Vision Range
	.db 2
	
;Unknown
	.db 0
	
;Firing Range
	.db 1,3
	
;Maximum Fuel
	.db 50
	
;B-Button Range Display Type.
	.db BButtonIndirect
	
;Unknown
	.dh 0
	
;Transport Ability
	.dw TransportTypeLandVehicle

;Unit Class
	.db ClassVehicle
	
;Movement Class
	.db AWPMoveTyre
	
;Facilities this unit can be built from
	.db BuildBase
	
;AI Unit AI
	.db AIIndirectCombat

;AI Priority Attack Targeting
	.db AITargetGround+AITargetAir

;AI Considers this a Unit of Type
	.db AITargetGround
	
;Unknown
	.db 0	
		
;Damage Chart (Primary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 65,65,45,55
;Tank, Recon, APC, Neotank	
	.db 60,45,50,35
;Destroyer, Artillery, Rockets, Gunboat	
	.db 0,65,70,0
;Carrier, Antiair, Missile, Fighter	
	.db 0,75,70,0
;Bomber, Duster, B-Copter, T-Copter	
	.db 0,0,45,55
;Battleship, Cruiser, Lander, Sub	
	.db 0,0,0,0
;Dived Sub	
	.db 0	
	
;Unknown
	.db 0
	
;Damage Chart (Secondary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 0,0,0,0
;Tank, Recon, APC, Neotank	
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
	.dw SuppliedByBase
	
;Unit Uses Fuel on These Tiles
	.dw FuelUseageTypeGround
	
;Blank Line

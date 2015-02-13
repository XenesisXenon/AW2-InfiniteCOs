;ReconUnit.asm
;Recon Stats


;Unit Name ID
	.dh 2239
	
;Primary Weapon Name ID
	.dh 3020
	
;Secondary Weapon Name ID	
	.dh 3025
	
;Unit Price for 1HP
	.dh 2000
	
;Unknown
	.dh 0

;Movement
	.db 9
	
;Maximum Ammunition
	.db 3
	
;Vision Range
	.db 5
	
;Unknown
	.db 0
	
;Firing Range
	.db 2,3
	
;Maximum Fuel
	.db 99
	
;B-Button Range Display Type.
	.db BButtonIndirect
	
;Unknown
	.dh 0
	
;Transport Ability
	.dw TransportTypeRailcannon

;Unit Class
	.db ClassVehicle
	
;Movement Class
	.db AWPMoveTypeRail
	
;Facilities this unit can be built from
	.db BuildBase
	
;AI Unit AI
	.db AIIndirectCombat

;AI Priority Attack Targeting
	.db AITargetGround+AITargetAir+AITargetSea+AITargetSub

;AI Considers this a Unit of Type
	.db AITargetGround
	
;Unknown
	.db 0	
		
;Damage Chart (Primary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 85,85,45,55
;Tank, Recon, APC, Neotank	
	.db 60,45,70,35
;Destroyer, Artillery, Rockets, Gunboat	
	.db 65,75,80,100
;Carrier, Antiair, Missile, Fighter	
	.db 45,65,80,45
;Bomber, Duster, B-Copter, T-Copter	
	.db 55,55,85,95
;Battleship, Cruiser, Lander, Sub	
	.db 45,55,65,55
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
	.dw SuppliedByBase
	
;Unit Uses Fuel on These Tiles
	.dw FuelUseageTypeGround
	
;Blank Line

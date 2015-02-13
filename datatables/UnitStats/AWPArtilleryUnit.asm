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
	.db 6
	
;Vision Range
	.db 3
	
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
	.dw TransportTypeLandVehicle

;Unit Class
	.db ClassVehicle
	
;Movement Class
	.db AWPMoveLightTread
	
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
;Bike, Mech, Medium Tank, Antitank
	.db 85,85,45,55
;Tank, Recon, APC, Neotank	
	.db 60,45,70,35
;Destroyer, Artillery, Rockets, Gunboat	
	.db 45,75,80,100
;Carrier, Antiair, Missile, Fighter	
	.db 45,65,80,0
;Bomber, Duster, B-Copter, T-Copter	
	.db 0,0,0,0
;Battleship, Cruiser, Lander, Sub	
	.db 45,55,65,55
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

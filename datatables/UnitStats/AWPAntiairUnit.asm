;AntiairUnit.asm
;Anti-Air Stats


;Unit Name ID
	.dh 2243
	
;Primary Weapon Name ID
	.dh 2257
	
;Secondary Weapon Name ID	
	.dh 2266
	
;Unit Price for 1HP
	.dh 700
	
;Unknown
	.dh 10

;Movement
	.db 6
	
;Maximum Ammunition
	.db 6
	
;Vision Range
	.db 3
	
;Unknown
	.db 2
	
;Firing Range
	.db 1,1
	
;Maximum Fuel
	.db 60
	
;B-Button Range Display Type.
	.db BButtonDirect
	
;Unknown
	.dh 4
	
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
	.db AITargetGround+AITargetAir

;AI Considers this a Unit of Type
	.db AITargetGround

;Unknown
	.db 0
	
;Damage Chart (Primary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 105,105,10,25
;Tank, Recon, APC, Neotank	
	.db 15,10,50,5
;Destroyer, Artillery, Rockets, Gunboat	
	.db 0,50,55,0
;Carrier, Antiair, Missile, Fighter	
	.db 0,45,55,70
;Bomber, Duster, B-Copter, T-Copter	
	.db 70,75,105,120
;Battleship, Cruiser, Lander, Sub	
	.db 0,0,0,0
;Dived Sub	
	.db 0	

;Unknown	
	.db 00	
	
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

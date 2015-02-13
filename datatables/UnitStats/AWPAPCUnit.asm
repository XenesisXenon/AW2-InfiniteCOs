;APCUnit.asm
;APC Stats


;Unit Name ID
	.dh 2240
	
;Primary Weapon Name ID
	.dh 2266
	
;Secondary Weapon Name ID	
	.dh 2253
	
;Unit Price for 1HP
	.dh 550
	
;Unknown
	.dh 0

;Movement
	.db 6
	
;Maximum Ammunition
	.db 0
	
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
	.dw TransportTypeAPC

;Unit Class
	.db ClassVehicle
	
;Movement Class
	.db AWPMoveLightTread
	
;Facilities this unit can be built from
	.db BuildBase
	
;AI Unit AI
	.db AICarryFootSoldiers

;AI Priority Attack Targeting
	.db AITargetGround

;AI Considers this a Unit of Type
	.db AITargetGround
	
;Unknown
	.db 0	

;Damage Chart (Primary Weapon)
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
	
;Unknown
	.db 0	
	
;Damage Chart (Secondary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 55,45,5,30
;Tank, Recon, APC, Neotank	
	.db 5,5,14,1
;Destroyer, Artillery, Rockets, Gunboat	
	.db 0,10,20,0
;Carrier, Antiair, Missile, Fighter	
	.db 0,3,20,0
;Bomber, Duster, B-Copter, T-Copter	
	.db 0,0,8,30
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

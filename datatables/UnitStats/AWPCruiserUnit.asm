;CruiserUnit.asm
;Cruiser Stats


;Unit Name ID
	.dh 2250
	
;Primary Weapon Name ID
	.dh 2261
	
;Secondary Weapon Name ID	
	.dh 2265
	
;Unit Price for 1HP
	.dh 1800
	
;Unknown
	.dh 0

;Movement
	.db 6
	
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
	.dw TransportTypeCruiser

;Unit Class
	.db ClassNaval
	
;Movement Class
	.db AWPMoveHeavyShip
	
;Facilities this unit can be built from
	.db BuildPort
	
;AI Unit AI
	.db AIDirectCombat

;AI Priority Attack Targeting
	.db AITargetAir+AITargetSea+AITargetSub

;AI Considers this a Unit of Type
	.db AITargetSea
	
;Unknown
	.db 0	
	
;Damage Chart (Primary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 0,0,0,0
;Tank, Train, APC, Neotank	
	.db 0,0,0,0
;Destroyer, Artillery, Rockets, Gunboat	
	.db 40,0,0,85
;Carrier, Antiair, Missile, Fighter	
	.db 38,0,0,0
;Bomber, Duster, B-Copter, T-Copter	
	.db 0,0,0,0
;Battleship, Cruiser, Lander, Sub	
	.db 38,28,40,95
;Dived Sub	
	.db 95	
	
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
	.db 0,0,0,105
;Bomber, Duster, B-Copter, T-Copter	
	.db 105,105,120,120
;Battleship, Cruiser, Lander, Sub	
	.db 0,0,0,0
;Dived Sub	
	.db 0	

;Padding
	.dh 00

;Unit is Supplied on This Terrain
	.dw SuppliedByPort
	
;Unit Uses Fuel on These Tiles
	.dw FuelUseageTypeSea
	
;Blank Line

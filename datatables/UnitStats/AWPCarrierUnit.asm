;NullDUnit.asm
;Null Unit D Stats
;This is the Unit Slot 13, Normally unavailable.


;Unit Name ID
	.dh 3319
	
;Primary Weapon Name ID
	.dh 2260
	
;Secondary Weapon Name ID	
	.dh 2266
	
;Unit Price for 1HP
	.dh 2100
	
;Unknown
	.dh 0

;Movement
	.db 5
	
;Maximum Ammunition
	.db 4
	
;Vision Range
	.db 4
	
;Unknown
	.db 0
	
;Firing Range
	.db 3,7
	
;Maximum Fuel
	.db 99
	
;B-Button Range Display Type.
	.db BButtonIndirect
	
;Unknown
	.dh 0
	
;Transport Ability
	.dw TransportTypeCarrier

;Unit Class
	.db ClassNaval
	
;Movement Class
	.db AWPMoveHeavyShip
	
;Facilities this unit can be built from
	.db BuildPort
	
;AI Unit AI
	.db AIIndirectCombat

;AI Priority Attack Targeting
	.db AITargetAir

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
	.db 0,0,0,0
;Carrier, Antiair, Missile, Fighter	
	.db 0,0,0,100
;Bomber, Duster, B-Copter, T-Copter	
	.db 100,100,115,115
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
	.dw SuppliedByPort
	
;Unit Uses Fuel on These Tiles
	.dw FuelUseageTypeSea
	
;Blank Line

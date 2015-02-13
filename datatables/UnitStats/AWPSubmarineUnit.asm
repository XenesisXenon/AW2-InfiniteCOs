;SubmarineUnit.asm
;Submarine Stats


;Unit Name ID
	.dh 2252
	
;Primary Weapon Name ID
	.dh 2264
	
;Secondary Weapon Name ID	
	.dh 2266
	
;Unit Price for 1HP
	.dh 2000
	
;Unknown
	.dh 0

;Movement
	.db 7
	
;Maximum Ammunition
	.db 6
	
;Vision Range
	.db 5
	
;Unknown
	.db 0
	
;Firing Range
	.db 1,1
	
;Maximum Fuel
	.db 70
	
;B-Button Range Display Type.
	.db BButtonDirect
	
;Unknown
	.dh 0
	
;Transport Ability
	.dw BooleanOff

;Unit Class
	.db ClassNaval
	
;Movement Class
	.db AWPMoveHeavyShip
	
;Facilities this unit can be built from
	.db BuildPort
	
;AI Unit AI
	.db AIDirectCombat

;AI Priority Attack Targeting
	.db AITargetSea+AITargetSub

;AI Considers this a Unit of Type
	.db AITargetSub
	
;Unknown
	.db 0	
		
;Damage Chart (Primary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 0,0,0,0
;Tank, Train, APC, Neotank	
	.db 0,0,0,0
;Destroyer, Artillery, Rockets, Gunboat	
	.db 85,0,0,120
;Carrier, Antiair, Missile, Fighter	
	.db 110,0,0,0
;Bomber, Duster, B-Copter, T-Copter	
	.db 0,0,0,0
;Battleship, Cruiser, Lander, Sub	
	.db 80,20,85,55
;Dived Sub	
	.db 55
	
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

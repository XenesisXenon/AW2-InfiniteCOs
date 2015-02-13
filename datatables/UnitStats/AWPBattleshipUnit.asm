;BattleshipUnit.asm
;Battleship Stats


;Unit Name ID
	.dh 2249
	
;Primary Weapon Name ID
	.dh 2255
	
;Secondary Weapon Name ID	
	.dh 2266
	
;Unit Price for 1HP
	.dh 2500
	
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
	.db 2,6
	
;Maximum Fuel
	.db 99
	
;B-Button Range Display Type.
	.db BButtonIndirect
	
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
	.db AIIndirectCombat

;AI Priority Attack Targeting
	.db AITargetGround+AITargetSea

;AI Considers this a Unit of Type
	.db AITargetSea
	
;Unknown
	.db 0	
	
;Damage Chart (Primary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 70,70,50,55
;Tank, Recon, APC, Neotank	
	.db 65,50,65,40
;Destroyer, Artillery, Rockets, Gunboat	
	.db 75,70,75,95
;Carrier, Antiair, Missile, Fighter	
	.db 50,65,75,0
;Bomber, Duster, B-Copter, T-Copter	
	.db 0,0,0,0
;Battleship, Cruiser, Lander, Sub	
	.db 45,65,75,65
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
	.dw SuppliedByPort
	
;Unit Uses Fuel on These Tiles
	.dw FuelUseageTypeSea
	
;Blank Line

;BattleshipUnit.asm
;Battleship Stats


;Unit Name ID
	.dh 2249
	
;Primary Weapon Name ID
	.dh 2255
	
;Secondary Weapon Name ID	
	.dh 2266
	
;Unit Price for 1HP
	.dh 2800
	
;Unknown
	.dh 0

;Movement
	.db 5
	
;Maximum Ammunition
	.db 9
	
;Vision Range
	.db 2
	
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
	.db MoveShip
	
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
;Infantry, Mech, Medium Tank, UID4
	.db 95,90,55,00
;Tank, Recon, APC, Neotank	
	.db 80,90,80,50
;UID9, Artillery, Rockets, UIDC	
	.db 0,80,85,0
;UIDD, Antiair, Missile, Fighter	
	.db 0,85,90,0
;Bomber, UID12, B-Copter, T-Copter	
	.db 0,0,0,0
;Battleship, Cruiser, Lander, Sub	
	.db 50,95,95,95
;Dived Sub	
	.db 00	
	
;Unknown
	.db 0	
		
;Damage Chart (Secondary Weapon)
;Infantry, Mech, Medium Tank, UID4
	.db 0,0,0,0
;Tank, Recon, APC, Neotank	
	.db 0,0,0,0
;UID9, Artillery, Rockets, UIDC	
	.db 0,0,0,0
;UIDD, Antiair, Missile, Fighter	
	.db 0,0,0,0
;Bomber, UID12, B-Copter, T-Copter	
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

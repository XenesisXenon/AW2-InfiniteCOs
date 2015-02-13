;BattlecopterUnit.asm
;Battle Copter Stats


;Unit Name ID
	.dh 2247
	
;Primary Weapon Name ID
	.dh 2260
	
;Secondary Weapon Name ID	
	.dh 2253
	
;Unit Price for 1HP
	.dh 900
	
;Unknown
	.dh 0

;Movement
	.db 6
	
;Maximum Ammunition
	.db 6
	
;Vision Range
	.db 3
	
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
	.dw BooleanOff

;Unit Class
	.db ClassCopter
	
;Movement Class
	.db MoveAir
	
;Facilities this unit can be built from
	.db BuildAirport
	
;AI Unit AI
	.db AIDirectCombat

;AI Priority Attack Targeting
	.db AITargetGround+AITargetSea

;AI Considers this a Unit of Type
	.db AITargetAir
	
;Unknown
	.db 0	
	
;Damage Chart (Primary Weapon)
;Infantry, Mech, Medium Tank, UID4
	.db 45,50,25,0
;Tank, Recon, APC, Neotank	
	.db 55,55,60,20
;UID9, Artillery, Rockets, UIDC	
	.db 0,65,65,0
;UIDD, Antiair, Missile, Fighter	
	.db 0,25,65,0
;Bomber, UID12, B-Copter, T-Copter	
	.db 0,0,0,0
;Battleship, Cruiser, Lander, Sub	
	.db 25,55,25,25
;Dived Sub	
	.db 00	
	
;Unknown
	.db 0	
	
;Damage Chart (Secondary Weapon)
;Infantry, Mech, Medium Tank, UID4
	.db 75,75,1,0
;Tank, Recon, APC, Neotank	
	.db 6,30,20,1
;UID9, Artillery, Rockets, UIDC	
	.db 0,25,35,0
;UIDD, Antiair, Missile, Fighter	
	.db 0,6,35,0
;Bomber, UID12, B-Copter, T-Copter	
	.db 0,0,65,95
;Battleship, Cruiser, Lander, Sub	
	.db 0,0,0,0
;Dived Sub	
	.db 0

;Padding
	.dh 00

;Unit is Supplied on This Terrain
	.dw SuppliedByAirport
	
;Unit Uses Fuel on These Tiles
	.dw FuelUseageTypeCopter
	
;Blank Line

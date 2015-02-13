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
	.dw TransportTypeCruiser

;Unit Class
	.db ClassNaval
	
;Movement Class
	.db MoveShip
	
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
;Infantry, Mech, Medium Tank, UID4
	.db 00,00,00,00
;Tank, Recon, APC, Neotank	
	.db 00,00,00,00
;UID9, Artillery, Rockets, UIDC	
	.db 00,00,00,00
;UIDD, Antiair, Missile, Fighter	
	.db 00,00,00,00
;Bomber, UID12, B-Copter, T-Copter	
	.db 00,00,00,00
;Battleship, Cruiser, Lander, Sub	
	.db 00,00,00,90
;Dived Sub	
	.db 90	
	
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
	.db 0,0,0,55
;Bomber, UID12, B-Copter, T-Copter	
	.db 65,0,115,115
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

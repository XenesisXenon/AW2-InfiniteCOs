;LanderUnit.asm
;Lander Stats


;Unit Name ID
	.dh 2251
	
;Primary Weapon Name ID
	.dh 2266
	
;Secondary Weapon Name ID	
	.dh 2266
	
;Unit Price for 1HP
	.dh 1200
	
;Unknown
	.dh 0

;Movement
	.db 6
	
;Maximum Ammunition
	.db 0
	
;Vision Range
	.db 1
	
;Unknown
	.db 0
	
;Firing Range
	.db 0,0
	
;Maximum Fuel
	.db 99
	
;B-Button Range Display Type.
	.db BButtonIndirect
	
;Unknown
	.dh 0
	
;Transport Ability
	.dw TransportTypeLander

;Unit Class
	.db ClassNaval
	
;Movement Class
	.db MoveNavalTransport
	
;Facilities this unit can be built from
	.db BuildPort
	
;AI Unit AI
	.db AICarryLandUnits

;AI Priority Attack Targeting
	.db BooleanOff

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
	.db 00,00,00,00
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

;NeotankUnit.asm
;Neotank Stats


;Unit Name ID
	.dh 2236
	
;Primary Weapon Name ID
	.dh 2267
	
;Secondary Weapon Name ID	
	.dh 2253
	
;Unit Price for 1HP
	.dh 2200
	
;Unknown
	.dh 0

;Movement
	.db 6
	
;Maximum Ammunition
	.db 9
	
;Vision Range
	.db 1
	
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
	.db ClassVehicle
	
;Movement Class
	.db MoveTread
	
;Facilities this unit can be built from
	.db BuildBase
	
;AI Unit AI
	.db AIDirectCombat

;AI Priority Attack Targeting
	.db AITargetGround

;AI Considers this a Unit of Type
	.db AITargetGround
	
;Unknown
	.db 0	
		
;Damage Chart (Primary Weapon)
;Infantry, Mech, Medium Tank, UID4
	.db 50,45,75,00
;Tank, Recon, APC, Neotank	
	.db 105,125,125,55
;UID9, Artillery, Rockets, UIDC	
	.db 00,115,125,00
;UIDD, Antiair, Missile, Fighter	
	.db 00,115,125,00
;Bomber, UID12, B-Copter, T-Copter	
	.db 00,00,00,00
;Battleship, Cruiser, Lander, Sub	
	.db 15,50,40,15
;Dived Sub	
	.db 00	
	
;Unknown
	.db 0
	
;Damage Chart (Secondary Weapon)
;Infantry, Mech, Medium Tank, UID4
	.db 125,115,1,0
;Tank, Recon, APC, Neotank	
	.db 10,65,65,1
;UID9, Artillery, Rockets, UIDC	
	.db 00,65,75,0
;UIDD, Antiair, Missile, Fighter	
	.db 00,17,55,0
;Bomber, UID12, B-Copter, T-Copter	
	.db 00,00,22,55
;Battleship, Cruiser, Lander, Sub	
	.db 00,00,00,00
;Dived Sub	
	.db 00

;Padding
	.dh 00

;Unit is Supplied on This Terrain
	.dw SuppliedByBase
	
;Unit Uses Fuel on These Tiles
	.dw FuelUseageTypeGround
	
;Blank Line

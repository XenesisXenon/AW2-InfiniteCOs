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
	.db 5
	
;Maximum Ammunition
	.db 6
	
;Vision Range
	.db 5
	
;Unknown
	.db 0
	
;Firing Range
	.db 1,1
	
;Maximum Fuel
	.db 60
	
;B-Button Range Display Type.
	.db BButtonDirect
	
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
	.db AIDirectCombat

;AI Priority Attack Targeting
	.db AITargetSea+AITargetSub

;AI Considers this a Unit of Type
	.db AITargetSub
	
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
	.db 55,25,95,55
;Dived Sub	
	.db 55	
	
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

;TankUnit.asm
;Tank Stats


;Unit Name ID
	.dh 2238
	
;Primary Weapon Name ID
	.dh 2259
	
;Secondary Weapon Name ID	
	.dh 2253
	
;Unit Price for 1HP
	.dh 700
	
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
	.db 70
	
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
	.db 35,30,15,00
;Tank, Recon, APC, Neotank	
	.db 55,85,75,15
;UID9, Artillery, Rockets, UIDC	
	.db 00,70,85,00
;UIDD, Antiair, Missile, Fighter	
	.db 00,65,85,00
;Bomber, UID12, B-Copter, T-Copter	
	.db 00,00,00,00
;Battleship, Cruiser, Lander, Sub	
	.db 1,5,10,1
;Dived Sub	
	.db 00	

;Unknown
	.db 0
	
;Damage Chart (Secondary Weapon)
;Infantry, Mech, Medium Tank, UID4
	.db 75,70,1,0
;Tank, Recon, APC, Neotank	
	.db 6,40,45,1
;UID9, Artillery, Rockets, UIDC	
	.db 00,45,55,0
;UIDD, Antiair, Missile, Fighter	
	.db 00,05,30,0
;Bomber, UID12, B-Copter, T-Copter	
	.db 00,00,10,40
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

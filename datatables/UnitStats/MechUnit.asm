;MechUnit.asm
;Mech Stats


;Unit Name ID
	.dh 2235
	
;Primary Weapon Name ID
	.dh 2254
	
;Secondary Weapon Name ID	
	.dh 2253
	
;Unit Price for 1HP
	.dh 300
	
;Unknown
	.dh 0

;Movement
	.db 2
	
;Maximum Ammunition
	.db 3
	
;Vision Range
	.db 2
	
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
	.db ClassSoldier
	
;Movement Class
	.db MoveMech
	
;Facilities this unit can be built from
	.db BuildBase
	
;AI Unit AI
	.db AICaptureUnit

;AI Priority Attack Targeting
	.db AITargetGround

;AI Considers this a Unit of Type
	.db AITargetGround
	
;Unknown
	.db 0	
		
;Damage Chart (Primary Weapon)
;Infantry, Mech, Medium Tank, UID4
	.db 00,00,15,00
;Tank, Recon, APC, Neotank	
	.db 55,85,75,15
;UID9, Artillery, Rockets, UIDC	
	.db 00,70,85,00
;UIDD, Antiair, Missile, Fighter	
	.db 00,65,85,00
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
	.db 65,55,1,0
;Tank, Recon, APC, Neotank	
	.db 6,18,20,1
;UID9, Artillery, Rockets, UIDC	
	.db 00,32,35,0
;UIDD, Antiair, Missile, Fighter	
	.db 00,6,35,0
;Bomber, UID12, B-Copter, T-Copter	
	.db 00,00,09,35
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

;macros_event.asm
;Defines the various events for in-game scripts

Position_Bottom	equ 0
Position_Top	equ 1

Cursor_Select_D		equ 0
Cursor_Select_U		equ 1
Cursor_RInfo		equ 2
Cursor_Arrow_R		equ 3
Cursor_Build		equ 4
Cursor_Delete		equ 5
Cursor_Invalid		equ 6
Cursor_Ring		equ 7
Cursor_Delete_BR	equ 8
Cursor_Delete_BL	equ 9
Cursor_Delete_TL	equ 0xA
Cursor_Delete_TR	equ 0xB
Cursor_CheckArrow_R	equ 0xC
Cursor_CheckArrow_L	equ 0xD
Cursor_Scroll_U		equ 0xE
Cursor_Scroll_D 	equ 0xF
Cursor_Scroll_L		equ 0x10
Cursor_Scroll_R		equ 0x11
Cursor_SiloTarget	equ 0x12

;	.macro Trigger_,Variable1,Variable2,Pointer
;		.db	x
;		.db	Variable
;		.dh	Variable2
;		.dw	Pointer
;	.endmacro

	;Triggers an event on a specific day and player turn.
	;Var1 = Player, Var2 = Day
	;If true, the next item will execute
	.macro Trigger_Time,Variable1,Variable2
		.db	0
		.db	Variable1
		.dh	Variable2
		.dw	0
	.endmacro

	;Triggers when a particular unit is selected
	;If true, the Event at the pointer will execute
	.macro Trigger_SelectUnit,Variable,Pointer
		.db	1
		.db	Variable
		.dh	0
		.dw	Pointer
	.endmacro

	;Triggers if a Flag = True
	;If true, the Event at the pointer will execute
	.macro Trigger_IsFlagTrue,Variable,Pointer
		.db	2
		.db	Variable
		.dh	0
		.dw	Pointer
	.endmacro
	
	;Triggers if a Flag = False
	;If false, the Event at the pointer will execute
	.macro Trigger_IsFlagFalse,Variable,Pointer
		.db	3
		.db	Variable
		.dh	0
		.dw	Pointer
	.endmacro
	
	;Triggers if a menu item with a specific menu ID is selected
	;Var1 = Menu Command ID
	;If true, the Event at the pointer will execute
	.macro Trigger_SelectMenu,Variable,Pointer
		.db	4
		.db	Variable
		.dh	0
		.dw	Pointer
	.endmacro

	;Runs some ASM code and checks the result
	;Executes the next item if true (return = 1)
	.macro Trigger_ASMCheckTrue,Pointer
		.db	5
		.db	0
		.dh	0
		.dw	Pointer
	.endmacro

	;Runs some ASM code and checks the result
	;Executes the next item if false (return = 0)
	.macro Trigger_ASMCheckFalse,Pointer
		.db	6
		.db	0
		.dh	0
		.dw	Pointer
	.endmacro

	;Executes the Event at the pointer
	;Sets the flag specified in Var
	.macro Trigger_SetFlag,Variable,Pointer
		.db	7
		.db	Variable
		.dh	0
		.dw	Pointer
	.endmacro

	.macro Trigger_EndEvent
		.db	8
		.db	0
		.dh	0
		.dw	0
	.endmacro

;	.macro Event_,Variable
;		.dw	0x
;		.dw	
;		.dw	
;		.dw	
;	.endmacro	

	;Runs the ASM at Pointer
	.macro Event_RunASM,Pointer
		.dw	0x0
		.dw	Pointer
		.dw	0
		.dw	0
	.endmacro
	
	;Pauses event execution for Var frames
	.macro Event_Pause,Variable
		.dw	0x1
		.dw	0
		.dw	0
		.dw	Variable
	.endmacro
	
	;Ends the event
	.macro Event_End
		.dw	0x4
		.dw	0
		.dw	0
		.dw	0
	.endmacro
	
	;Move the Cursor Var 1 = X Tile, Var2 = Y Tile
	.macro Event_Screen_Move,Variable1,Variable2
		.dw	0xF ;15
		.dw	0
		.dh	Variable1
		.dh	Variable2
		.dw	0
	.endmacro

	;Controls a Menu. Var 1 = Menu ID, Var 2 = Option
	.macro Event_ControlMenu,Variable1,Variable2
		.dw	0x11;17
		.dw	0
		.dw	Variable1
		.dw	Variable2
	.endmacro
	
	;Unlocks the Cursor
	.macro Event_Controls_Unlock
		.dw	0x12 ;18
		.dw	0
		.dw	0
		.dw	0
	.endmacro	
	
	;Locks the Cursor
	.macro Event_Controls_Lock
		.dw	0x13 ;19
		.dw	0,0,0
	.endmacro

	;Move the Cursor Var 1 = X Tile, Var2 = Y Tile
	.macro Event_Cursor_Position,Variable1,Variable2
		.dw	0x14 ;20
		.dw	0
		.dh	Variable1
		.dh	Variable2
		.dw	0
	.endmacro
	
	;Creates a Textbox. Var1 = CO Face, Var2 = Position
	.macro Event_Textbox_Create,Variable1,Variable2
		.dw	0x17 ;23
		.dw	0
		.dw	Variable1
		.dw	Variable2
	.endmacro

	;Clears a currently active textbox
	.macro Event_Textbox_Clear
		.dw	0x18 ;24
		.dw	0
		.dw	0
		.dw	0
	.endmacro	

	;Writes text to the currently active textbox
	.macro Event_Textbox_Text,Variable
		.dw	0x19 ;25
		.dw	0
		.dw	Variable
		.dw	0
	.endmacro	

	;Writes text to the currently active textbox
	.macro Event_Textbox_Battlemaps,Variable
		.dw	0x1A ;26
		.dw	0
		.dw	Variable
		.dw	0
	.endmacro	

	;Calls another Event (no variables)
	.macro Event_Call,Variable
		.dw	0x1D ;29
		.dw	Variable
		.dw	0
		.dw	0
	.endmacro	

	;Calls another Event, ASM in Var2
	.macro Event_Call_Custom,Variable1,Variable2
		.dw	0x1E ;30
		.dw	Variable1
		.dw	Variable2
		.dw	0
	.endmacro
	
	.macro Event_TriggerState_Set,Variable
		.dw	0x20 ;32
		.dw	0
		.dw	Variable
		.dw	0
	.endmacro
	
	;Sets 0x03001404 - Prevents/Allows Input from the game controls
	.macro Event_Dummy_0x22
		.dw	0x22 ;34
		.dw	0
		.dw	0
		.dw	0
	.endmacro
	
	.macro Event_Dummy_0x23
		.dw	0x23 ;35
		.dw	0
		.dw	0
		.dw	0
	.endmacro

	;Shows a Cursor/Icon at Var = x, Var2 = Y, Var3 = Cursor Type
	.macro Event_Icon_Show,Var1,Var2,Var3
		.dw	0x28 ;40
		.dw	0
		.dh	Var1
		.dh	Var2
		.dw	Var3
	.endmacro

	;Clears all loaded icons
	.macro Event_Icon_Clear
		.dw	0x29 ;41
		.dw	0
		.dh	0
		.dh	0
		.dw	0
	.endmacro

	;Shows the Mini unit/Terrain info panel
	.macro Event_InfoPanel_Show
		.dw	0x2C ;44
		.dw	0
		.dw	0
		.dw	0
	.endmacro
	
	;Hides the mini unit/terrain info panel
	.macro Event_InfoPanel_Hide
		.dw	0x2D ;45
		.dw	0
		.dw	0
		.dw	0
	.endmacro
	
	;Sets the textbox colour to the player specified
	.macro Event_TextBox_SetPlayer,Variable
		.dw	0x30 ;48
		.dw	0
		.dw	Variable
		.dw	0
	.endmacro
	
	;Sets the textbox colour to the value specified
	.macro Event_TextBox_SetColour,Variable
		.dw	0x31 ;49
		.dw	0
		.dw	Variable
		.dw	0
	.endmacro

	;Sets the textbox colour to the currently active player
	.macro Event_TextBox_SetCurrent
		.dw	0x32 ;50
		.dw	0
		.dw	0
		.dw	0
	.endmacro
	
	;Sets the current face in the textbox
	.macro Event_TextBox_SetFace,Variable
		.dw	0x38 ;56
		.dw	0
		.dw	Variable
		.dw	0
	.endmacro


	.macro Event_3A
		.dw	0x3A ;58
		.dw	0
		.dw	0
		.dw	0
	.endmacro

	;Calls another event, runs if Flag is set
	.macro Event_CheckFlag,Variable1,Variable2
		.dw	0x3E ;62
		.dw	Variable2
		.dw	Variable1
		.dw	0
	.endmacro

	;Sets Victory or Loss state. 1 = Victory, 2 = Defeat
	.macro Event_VictoryDefeat,Variable
		.dw	0x40 ;64
		.dw	0
		.dw	Variable
		.dw	0
	.endmacro
	
	;Plays the Sound Track specified
	.macro Event_Audio_Start,Variable
		.dw	0x41 ;65
		.dw	0
		.dw	Variable
		.dw	0
	.endmacro	

	;Stops the sound track played from the previous event
	.macro Event_Audio_Stop
		.dw	0x42 ;66
		.dw	0
		.dw	0
		.dw	0
	.endmacro
	
	;Checks whether the player is X CO, if false, skip x event commands
	.macro Event_CheckCO,Variable1,Variable2,Variable3
		.dw	0x43 ;67
		.dw	0
		.dh	Variable1
		.dh	Variable2
		.dw	Variable3
	.endmacro

	;Sets an Unlock Bit (Global)
	.macro Event_Global_Set,Variable
		.dw	0x44 ;68
		.dw	0
		.dw	Variable
		.dw	0
	.endmacro

	.macro Event_Global_Clear,Variable
		.dw	0x45 ;69
		.dw	0
		.dw	Variable
		.dw	0
	.endmacro
	
	;Centres the Screen on the specified co-ordinates (in tiles)
	.macro Event_Screen_Position,Variable1,Variable2
		.dw	0x46 ;70
		.dw	0
		.dh	Variable1
		.dh	Variable2
		.dw	0
	.endmacro
;Blank Line
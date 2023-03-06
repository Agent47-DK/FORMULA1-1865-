*-----------------------------------------------------------
* Subroutine    : Initialise
* Description   : Initialise game data into memory such as 
* sounds and screen size
*-----------------------------------------------------------
INITIALISE:

    ; Initialise Sounds
    ;BSR LOAD_DRIVE

    ; Screen Size
    MOVE.B  #TC_SCREEN, D0          ; access screen information
    MOVE.L  #TC_S_SIZE, D1          ; placing 0 in D1 triggers loading screen size information
    TRAP    #15                     ; interpret D0 and D1 for screen size
    MOVE.W  D1,         SCREEN_H    ; place screen height in memory location
    SWAP    D1                      ; Swap top and bottom word to retrive screen size
    MOVE.W  D1,         SCREEN_W    ; place screen width in memory location

    
    ; Get mid points of screen
    CLR.L   D1  
    MOVE.W  SCREEN_W,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on X Axis    
    MOVE.L  D1,         MIDDLE_X
    
    CLR.L   D1  
    MOVE.W  SCREEN_H,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on X Axis    
    MOVE.L  D1,         MIDDLE_Y

    ; Place the lanes default axis  at the center of the screen and lane position
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.L  MIDDLE_X,   D1          ; Place Screen width in D1
    MOVE.L  D1,         LANE_X      ; Lane X-Position

    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.L  MIDDLE_Y,   D1          ; Place Screen width in D1
    MOVE.L  D1,         LANE_Y      ; Lane X-Position
    
    ; Place the Player at the center of the screen and lane position
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_W,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on X Axis
    MOVE.L  D1,         PLAYER_X    ; Players X Position

    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_H,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on Y Axis
    ADD.L   #450,        D1
    MOVE.L  D1,         PLAYER_Y    ; Players Y Position
    
    ; Place Menu Player at the center of the screen and lane position
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_W,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on X Axis
    MOVE.L  D1,         MENU_PLAYER_X    ; Players X Position

    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_H,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on Y Axis
    ADD.L   #10,       D1
    MOVE.L  D1,         MENU_PLAYER_Y    ; Players Y Position
    
    ; Initial Position for Menu Enemy
                ;0 RIGHT
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_W,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on X Axis
    ADD.L   #32,        D1
    MOVE.L  D1,         MENU_ENEMY_X     ; Enemy X Position

    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_H,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on Y Axis
    SUB.L   #15,        D1
    SUB.L   #100,       D1
    MOVE.L  D1,         MENU_ENEMY_Y     ; Enemy Y Position


    
    ; Initialise Player Score
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.L  #00,        D1          ; Init Score
    MOVE.L  D1,         PLAYER_SCORE
    
    ; Initialise Distance Score
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.L  #00,        D1          ; Init Score
    MOVE.L  D1,         LEVEL_DISTANCE
    
    ;Initialise enemy speed
    CLR.L   D1
    MOVE.L  #01,        D1
    MOVE.L  D1,         ENEMY_SPEED
    
    ;Initialise game speed
    CLR.L   D1
    MOVE.L  #02,        D1
    MOVE.L  D1,         LANE_SPEED
        
    ; Initialise Player GOAL
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.L  #GOAL1,        D1          ; Init Score
    MOVE.L  D1,         PLAYER_GOAL
    
    ; Initialise Player LEVEL
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.L  #01,        D1          ; Init Score
    MOVE.L  D1,         PLAYER_LEVEL

    
    ; Initial Position for Enemies
                ;0 RIGHT
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_W,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on X Axis
    ADD.L   #32,        D1
    MOVE.L  D1,         ENEMY_X     ; Enemy X Position

    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_H,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on Y Axis
    SUB.L   #15,        D1
    ADD.L   #420,       D1
    MOVE.L  D1,         ENEMY_Y     ; Enemy Y Position
    
                ;0 RIGHT
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_W,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on X Axis
    ADD.L   #32,        D1
    MOVE.L  D1,         ENEMY_X1     ; Enemy X Position

    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_H,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on Y Axis
    SUB.L   #15,        D1
    ADD.L   #320,       D1
    MOVE.L  D1,         ENEMY_Y1     ; Enemy Y Position

    
                ;2 CENTER
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_W,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on X Axis
    SUB.L   #20,        D1
    MOVE.L  D1,         ENEMY_X2     ; Enemy X Position

    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_H,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on Y Axis
    SUB.L   #15,        D1
    ADD.L   #200,       D1
    MOVE.L  D1,         ENEMY_Y2     ; Enemy Y Position
    
                   
                ;4 RIGHT
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_W,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on X Axis
    ADD.L   #32,        D1
    MOVE.L  D1,         ENEMY_X4     ; Enemy X Position

    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_H,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on Y Axis
    SUB.L   #15,        D1
    ADD.L   #60,       D1
    MOVE.L  D1,         ENEMY_Y4     ; Enemy Y Position
            
            ;5 CENTER
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_W,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on X Axis
    SUB.L   #20,        D1
    MOVE.L  D1,         ENEMY_X5     ; Enemy X Position

    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_H,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on Y Axis
    SUB.L   #15,        D1
    SUB.L   #60,        D1
    MOVE.L  D1,         ENEMY_Y5     ; Enemy Y Position
    
            ;6 CENTER
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_W,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on X Axis
    SUB.L   #20,        D1
    MOVE.L  D1,         ENEMY_X6     ; Enemy X Position

    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_H,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on Y Axis
    SUB.L   #15,        D1
    SUB.L   #150,        D1
    MOVE.L  D1,         ENEMY_Y6     ; Enemy Y Position

            ;7 RIGHT
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_W,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on X Axis
    ADD.L   #32,        D1
    MOVE.L  D1,         ENEMY_X7     ; Enemy X Position

    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_H,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on Y Axis
    SUB.L   #15,        D1
    SUB.L   #290,       D1
    MOVE.L  D1,         ENEMY_Y7     ; Enemy Y Position

            

            ;9 CENTER
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_W,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on X Axis
    SUB.L   #20,        D1
    MOVE.L  D1,         ENEMY_X9     ; Enemy X Position

    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_H,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on Y Axis
    SUB.L   #15,        D1
    SUB.L   #430,        D1
    MOVE.L  D1,         ENEMY_Y9     ; Enemy Y Position

            ;10 RIGHT
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_W,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on X Axis
    ADD.L   #32,        D1
    MOVE.L  D1,         ENEMY_X10     ; Enemy X Position

    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  SCREEN_H,   D1          ; Place Screen width in D1
    DIVU    #02,        D1          ; divide by 2 for center on Y Axis
    SUB.L   #15,        D1
    SUB.L   #540,       D1
    MOVE.L  D1,         ENEMY_Y10     ; Enemy Y Position

   
        
    
    ; Show Keys Pressed
    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$0001,     D1          ; Col 00, Row 1
    TRAP    #15                     ; Trap (Perform action)
    LEA     KEYCODE_MSG, A1         ; Keycode
    MOVE    #13,        D0          ; No Line feed
    TRAP    #15                     ; Trap (Perform action)

    ; Show KeyCode
    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$0901,     D1          ; Col 30, Row 1
    TRAP    #15                     ; Trap (Perform action)    
    MOVE.L  CURRENT_KEY,D1          ; Move Key Pressed to D1
    MOVE.B  #03,        D0          ; Display the contents of D1
    TRAP    #15                     ; Trap (Perform action)

        
    
    
    ;initialise player on center
    MOVE.L  #CENTER_TRUE,   PLAYER_ON_CENTER
    MOVE.L  #FALSE,         PLAYER_ON_RIGHT
    
    ; Enable the screen back buffer(see easy 68k help)
	MOVE.B  #TC_DBL_BUF,D0          ; 92 Enables Double Buffer
    MOVE.B  #17,        D1          ; Combine Tasks
	TRAP	#15                     ; Trap (Perform action)

    ; Clear the screen (see easy 68k help)
    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
	MOVE.W  #$FF00,     D1          ; Fill Screen Clear
	TRAP	#15                     ; Trap (Perform action)
	
	


	



*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~

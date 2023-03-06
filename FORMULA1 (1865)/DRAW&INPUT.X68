*-----------------------------------------------------------
* Subroutine    : Draw
* Description   : Draw Screen
*-----------------------------------------------------------
DRAW: 
    ; Enable back buffer
    MOVE.B  #94,        D0
    TRAP    #15

    ; Clear the screen
    MOVE.B	#TC_CURSR_P,D0          ; Set Cursor Position
	MOVE.W	#$FF00,     D1          ; Clear contents
	TRAP    #15                     ; Trap (Perform action)

    BSR     DRAW_PLYR_DATA
    BSR     DRAW_LANES              ; Draw Lanes
    BSR     DRAW_PLAYER
    BSR     DRAW_ENEMY              : Draw Opponent Race Cars
    BSR     DRAW_ENEMY1
    BSR     DRAW_ENEMY2
    BSR     DRAW_ENEMY4
    BSR     DRAW_ENEMY5
    BSR     DRAW_ENEMY6
    BSR     DRAW_ENEMY7
    BSR     DRAW_ENEMY9
    BSR     DRAW_ENEMY10


   
    RTS                             ; Return to subroutine
*-----------------------------------------------------------
* Subroutine    : Input
* Description   : Process Keyboard Input
*-----------------------------------------------------------
INPUT:
    
    ; Process Input
    CLR.L   D1                      ; Clear Data Register
    CLR.L   D2
    MOVE.B  #TC_KEYCODE,D0          ; Listen for Keys
    TRAP    #15                     ; Trap (Perform action)
    MOVE.B  D1,         D2          ; Move last key D1 to D2
    CMP.B   #00,        D2          ; Key is pressed
    BEQ     PROCESS_INPUT           ; Process Key
    TRAP    #15                     ; Trap for Last Key
    ; Check if key still pressed
    CMP.B   #$FF,       D1          ; Is it still pressed
    BEQ     PROCESS_INPUT           ; Process Last Key
    RTS                             ; Return to subroutine

    
*-----------------------------------------------------------
* Subroutine    : Process Input
* Description   : Branch based on keys pressed
*-----------------------------------------------------------
PROCESS_INPUT:
    MOVE.L  D2,         CURRENT_KEY ; Put Current Key in Memory
    CMP.L   #LEFT,      CURRENT_KEY ; Is Current Key Left
    BEQ     MOVE_LEFT 
    CMP.L   #RIGHT,     CURRENT_KEY ; Is Current Key Right
    BEQ     MOVE_RIGHT
    MOVE.L  D2,         CURRENT_KEY ; Put Current Key in Memory
    CMP.L   #ESCAPE,    CURRENT_KEY ; Is Current Key Escape
    BEQ     EXIT
    CMP.L   #ENTER,  CURRENT_KEY ; Is Current Key Right_2
    BEQ     GAMELOOP
    RTS























*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~

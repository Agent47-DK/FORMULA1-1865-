*-----------------------------------------------------------
* Subroutine    : Menu Update
* Description   : Main update loop update lanes
*-----------------------------------------------------------
UPDATE_MENU:
    ;Set Previous Time
    MOVE.B  #08, D0     ; CURRENT TIME IN MS WILL BE PUT IN D1.L
    TRAP    #15         ; TRAP
    MOVE.L D1, D2       ; D2 NOW HAS PREVIOUS TIME
    BSR Menu_Movement
Menu_Movement: 
    ; Get Current Time
    MOVE.B  #08, D0     ; CURRENT TIME IN MS WILL BE PUT IN D1.L
    TRAP    #15         ; TRAP
    MOVE.L D1, D3       ; D3 NOW HAS CURRENT TIME
    MOVE.L D1, D4       ; D4 ALSO HAS CURRENT TIME
    
    ; Subtract Previous from Current
    SUB.L   D2, D3      ; D3 NOW HAS ELAPSED TIME
    
    CMP.L   #01, D3    ; IS ELAPSED TIME GREATER THAN 00 MS
    BLE     Menu_Movement   ; WE NEED TO DELAY A BIT LONGER
    MOVE.L  D4, D2      ; SET PREVIOUS TIME TO CURRENT TIME
    BRA     Move_The_Player_And_Enemy  ; MOVE THE LANES AND ENEMY

Move_The_Player_And_Enemy:
    ; Move the Enemy
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    CLR.L   D1                      ; Clear the contents of D0
    MOVE.L  MENU_ENEMY_Y,    D1          ; Move the Enemy X Position to D0
    CMP.L   #600,        D1
    BHI     RESET_MENU_ENEMY_POSITION    ; Reset Lane if off Screen
    BRA     MOVE_MENU_ENEMY     ; Move the lane
                                   ; Return to subroutine
    
    RTS


MOVE_MENU_ENEMY:
    CLR.L D1  
    MOVE.L  #01,    D1
    ADD.L   D1,     MENU_ENEMY_Y
    RTS

RESET_MENU_ENEMY_POSITION:
    CLR.L   D1
    MOVE.L  #250,    D1
    MOVE.L  D1,     MENU_ENEMY_Y
    RTS







*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~

*-----------------------------------------------------------
* Subroutine    : Update
* Description   : Main update loop update lanes
*-----------------------------------------------------------
UPDATE:
    ;Set Previous Time
    MOVE.B  #08, D0     ; CURRENT TIME IN MS WILL BE PUT IN D1.L
    TRAP    #15         ; TRAP
    MOVE.L D1, D2       ; D2 NOW HAS PREVIOUS TIME
    BSR Lane_Movement
Lane_Movement: 
    ; Get Current Time
    MOVE.B  #08, D0     ; CURRENT TIME IN MS WILL BE PUT IN D1.L
    TRAP    #15         ; TRAP
    MOVE.L D1, D3       ; D3 NOW HAS CURRENT TIME
    MOVE.L D1, D4       ; D4 ALSO HAS CURRENT TIME
    
    ; Subtract Previous from Current
    SUB.L   D2, D3      ; D3 NOW HAS ELAPSED TIME
    
    CMP.L   #01, D3    ; IS ELAPSED TIME GREATER THAN 00 MS
    BLE     Lane_Movement   ; WE NEED TO DELAY A BIT LONGER
    MOVE.L  D4, D2      ; SET PREVIOUS TIME TO CURRENT TIME
    BRA     Move_The_Lane_And_Enemy  ; MOVE THE LANES AND ENEMY

Move_The_Lane_And_Enemy:
    ; Move the Enemy
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    CLR.L   D1                      ; Clear the contents of D0
    MOVE.L  LANE_Y,    D1          ; Move the Enemy X Position to D0
    CMP.L   #541,        D1
    BHI     RESET_LANE_POSITION    ; Reset Lane if off Screen
    BRA     MOVE_LANE_AND_ENEMY     ; Move the lane
                                   ; Return to subroutine
    
    RTS






*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~

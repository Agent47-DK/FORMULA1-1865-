*-----------------------------------------------------------
* Subroutine    : Move Lanes
* Description   : Move Lanes top to bottom
*-----------------------------------------------------------
MOVE_LANE_AND_ENEMY:
    MOVE.L  ENEMY_SPEED,    D1
    ADD.L   D1,         LANE_Y     ; Move Lanes by Y Value 
    ADD.L   D1,        ENEMY_Y     ; Move Enemy by Y Value
    ADD.L   D1,        ENEMY_Y1     ; Move Enemy by Y Value
    ADD.L   D1,        ENEMY_Y2     ; Move Enemy by Y Value
    ADD.L   D1,        ENEMY_Y3     ; Move Enemy by Y Value
    ADD.L   D1,        ENEMY_Y4     ; Move Enemy by Y Value
    ADD.L   D1,        ENEMY_Y5     ; Move Enemy by Y Value
    ADD.L   D1,        ENEMY_Y6     ; Move Enemy by Y Value
    ADD.L   D1,        ENEMY_Y7     ; Move Enemy by Y Value
    ADD.L   D1,        ENEMY_Y8     ; Move Enemy by Y Value
    ADD.L   D1,        ENEMY_Y9     ; Move Enemy by Y Value
    ADD.L   D1,        ENEMY_Y10     ; Move Enemy by Y Value


    ;   ADD POINTS TO THE GAME
       CLR.L   D1
    MOVE.L  PLAYER_SCORE,   D1
    ADD.L   #POINTS,         D1
    MOVE.L  D1,         PLAYER_SCORE
    BSR     LEVEL_CHECK
    RTS
    
LEVEL_CHECK: 
    CMP.L   #2000,       PLAYER_SCORE
    BHI     LEVEL_2
    MOVE.L  #2000,      D2
    MOVE.L  PLAYER_SCORE,   D3
    SUB.L   D3,         D2
    MOVE.L  D2,         LEVEL_DISTANCE
    CLR.L   D2
    CLR.L   D3
    RTS

LEVEL_2:
    CMP.L   #4000,      PLAYER_SCORE
    BHI     LEVEL_3
    CLR.L   D1
    MOVE.L  #LEVEL2,    D1
    MOVE.L  D1,         ENEMY_SPEED
    MOVE.L  D1,         PLAYER_LEVEL
    CLR.L   D1
    MOVE.L  #GOAL2,      D1
    MOVE.L  D1,         PLAYER_GOAL
    MOVE.L  #4000,      D2
    MOVE.L  PLAYER_SCORE,   D3
    SUB.L   D3,         D2
    MOVE.L  D2,         LEVEL_DISTANCE
    CLR.L   D2
    CLR.L   D3

    RTS

LEVEL_3:
    CMP.L   #6000,      PLAYER_SCORE
    BHI     LEVEL_4
    CLR.L   D1
    MOVE.L  #LEVEL3,    D1
    MOVE.L  D1,         ENEMY_SPEED
    MOVE.L  D1,         PLAYER_LEVEL
    CLR.L   D1
    MOVE.L  #GOAL3,      D1
    MOVE.L  D1,         PLAYER_GOAL
    MOVE.L  #6000,      D2
    MOVE.L  PLAYER_SCORE,   D3
    SUB.L   D3,         D2
    MOVE.L  D2,         LEVEL_DISTANCE
    CLR.L   D2
    CLR.L   D3

    RTS

LEVEL_4:
    CMP.L   #10000,      PLAYER_SCORE
    BHI     LEVEL_5
    CLR.L   D1
    MOVE.L  #LEVEL4,    D1
    MOVE.L  D1,         ENEMY_SPEED
    MOVE.L  D1,         PLAYER_LEVEL
    CLR.L   D1
    MOVE.L  #GOAL4,      D1
    MOVE.L  D1,         PLAYER_GOAL
    MOVE.L  #10000,      D2
    MOVE.L  PLAYER_SCORE,   D3
    SUB.L   D3,         D2
    MOVE.L  D2,         LEVEL_DISTANCE
    CLR.L   D2
    CLR.L   D3

    RTS

LEVEL_5:
    CLR.L   D1
    MOVE.L  #LEVEL5,    D1
    MOVE.L  D1,         ENEMY_SPEED
    MOVE.L  D1,         PLAYER_LEVEL
    MOVE.L  #50000,      D2
    MOVE.L  PLAYER_SCORE,   D3
    CMP.L   D3,         D2
    BHI     NULIFY_DISTANCE
    SUB.L   D3,         D2
    MOVE.L  D2,         LEVEL_DISTANCE
    CLR.L   D2
    CLR.L   D3

    CLR.L   D1
    RTS    
    
NULIFY_DISTANCE:
    CLR.L   D1
    MOVE.L  #00,    D1
    MOVE.L  D1,     LEVEL_DISTANCE
    RTS

    
*-----------------------------------------------------------
* Subroutine    : Reset Lanes
* Description   : Reset Lane if it passes 450 to bottom of Screen
*-----------------------------------------------------------
RESET_LANE_POSITION:
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.L  #422,       D1          ; Place Screen width in D1
    MOVE.L  D1,         LANE_Y     ; Lane Y Position
            ;0                      1ST ENEMY
    CLR.L   D1
    CMP.L   #1000,      ENEMY_Y
    BHI     RESET_ENEMY_POSITION    ; Reset Enemy if off Screen
     
            ;1                      1ST ENEMY
    CLR.L   D1
    CMP.L   #1000,      ENEMY_Y1
    BHI     RESET_ENEMY_POSITION1    ; Reset Enemy if off Screen

        
     
    
            ;2
    CLR.L   D1
    CMP.L   #1000,        ENEMY_Y2
    BHI     RESET_ENEMY_POSITION2
    
                       
             ;4
    CLR.L   D1
    CMP.L   #1000,        ENEMY_Y4
    BHI     RESET_ENEMY_POSITION4
    
             ;5
    CLR.L   D1
    CMP.L   #1000,        ENEMY_Y5
    BHI     RESET_ENEMY_POSITION5
    
            ;6
    CLR.L   D1
    CMP.L   #1000,        ENEMY_Y6
    BHI     RESET_ENEMY_POSITION6
    
            ;7
    CLR.L   D1
    CMP.L   #1000,        ENEMY_Y7
    BHI     RESET_ENEMY_POSITION7
                
             ;9
    CLR.L   D1
    CMP.L   #1000,        ENEMY_Y9
    BHI     RESET_ENEMY_POSITION9
    
             ;10
    CLR.L   D1
    CMP.L   #1000,        ENEMY_Y10
    BHI     RESET_ENEMY_POSITION10
   


    
    RTS



























*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~

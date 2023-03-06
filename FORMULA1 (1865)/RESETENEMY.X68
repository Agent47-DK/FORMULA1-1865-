*-----------------------------------------------------------
* Subroutine    : Reset Enemy
* Description   : Reset Enemy if to passes 0 to bottom of Screen
*-----------------------------------------------------------
RESET_ENEMY_POSITION:
            ;1
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  #00,       D1          ; Place Screen width in D1
    MOVE.L  D1,         ENEMY_Y     ; Lane Y Position
    RTS  

RESET_ENEMY_POSITION1:
            ;1
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  #00,       D1          ; Place Screen width in D1
    MOVE.L  D1,         ENEMY_Y1     ; Lane Y Position
    RTS
    
RESET_ENEMY_POSITION2:
            ;2
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  #00,       D1          ; Place Screen width in D1
    MOVE.L  D1,         ENEMY_Y2     ; Lane Y Position
    RTS

RESET_ENEMY_POSITION3:
            ;3
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  #00,       D1          ; Place Screen width in D1
    MOVE.L  D1,         ENEMY_Y3     ; Lane Y Position
    RTS

RESET_ENEMY_POSITION4:
            ;4
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  #00,       D1          ; Place Screen width in D1
    MOVE.L  D1,        ENEMY_Y4     ; Lane Y Position
    RTS   

RESET_ENEMY_POSITION5:
            ;5
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  #00,       D1          ; Place Screen width in D1
    MOVE.L  D1,        ENEMY_Y5     ; Lane Y Position
    RTS
    
RESET_ENEMY_POSITION6:
            ;1
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  #00,       D1          ; Place Screen width in D1
    MOVE.L  D1,         ENEMY_Y6     ; Lane Y Position
    RTS
    
RESET_ENEMY_POSITION7:
            ;7
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  #00,       D1          ; Place Screen width in D1
    MOVE.L  D1,         ENEMY_Y7     ; Lane Y Position
    RTS

RESET_ENEMY_POSITION8:
            ;8
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  #00,       D1          ; Place Screen width in D1
    MOVE.L  D1,         ENEMY_Y8     ; Lane Y Position
    RTS

RESET_ENEMY_POSITION9:
            ;8
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  #00,       D1          ; Place Screen width in D1
    MOVE.L  D1,        ENEMY_Y9     ; Lane Y Position
    RTS   

RESET_ENEMY_POSITION10:
            ;10
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    MOVE.W  #00,       D1          ; Place Screen width in D1
    MOVE.L  D1,        ENEMY_Y10     ; Lane Y Position
    RTS




*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~

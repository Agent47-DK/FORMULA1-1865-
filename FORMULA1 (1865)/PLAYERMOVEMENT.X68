*..............................................................    
* Subroutine    : Move Left
* Description   : Move the player left once left key is pressed
*                 and the player is currently on the right
*..............................................................
MOVE_LEFT:    
    
    CMP.L   #RIGHT_TRUE, PLAYER_ON_RIGHT
    BEQ     PERFORM_LEFT_MOVE
    BRA     MOVE_DONE
PERFORM_LEFT_MOVE:
    CLR     D1
    MOVE.L  PLAYER_X,    D1
    SUB.L   #47,         D1
    MOVE.L  D1,          PLAYER_X
    MOVE.L  #FALSE,   PLAYER_ON_RIGHT
    MOVE.L  #CENTER_TRUE,     PLAYER_ON_CENTER    
    RTS
MOVE_DONE:
    RTS

*............................................................    
* Subroutine    : Move Right
* Description   : Move the player right once right key is pressed
*                 and the player is currently on the left
*............................................................
MOVE_RIGHT
    CMP.L   #CENTER_TRUE, PLAYER_ON_CENTER
    BEQ     PERFORM_RIGHT_MOVE
    BRA     MOVE_DONE
PERFORM_RIGHT_MOVE:    
    CLR     D1
    MOVE.L  PLAYER_X,    D1
    ADD.L   #47,         D1
    MOVE.L  D1,          PLAYER_X
    MOVE.L  #FALSE,   PLAYER_ON_CENTER
    MOVE.L  #RIGHT_TRUE,     PLAYER_ON_RIGHT
    RTS 

    

*............................................................    
* Subroutine    : IDLE
* Description   : DO NOTHING
*............................................................
IDLE:
    RTS

  














*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~

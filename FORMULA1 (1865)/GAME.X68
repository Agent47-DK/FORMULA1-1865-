*-----------------------------------------------------------
* Subroutine    : Game
* Description   : Game including main GameLoop. GameLoop is like
* a while loop in that it runs forever until interupted
* (Input, Update, Draw). The Enemies Run at Player Jump to Avoid
*-----------------------------------------------------------
GAME:
    BSR     DRAW_MENU
    BSR     INPUT
    BSR     UPDATE_MENU
    BRA     GAME
GAMELOOP:
    ; Main Gameloop
    BSR     INPUT
    BSR     UPDATE
    BSR     DRAW                    ; Draw the Scene
    BSR     CHECK_COLLISIONS        ; Check for Collisions
    BRA     GAMELOOP                ; Loop back to GameLoop














*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~

*-----------------------------------------------------------
* Title      :  Formula 1 (1805)
* Written by :  Douglas T Kadzutu
* Date       :  01/03/2023
* Description:  Formula 1 racing game written in 68k assembly
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program 

    INCLUDE "DECLARATIONS.X68"

* Put program code here
    INCLUDE "INITIALISE.X68"
    INCLUDE "GAME.X68"
    INCLUDE "UPDATE.X68"
    INCLUDE "UPDATEMENU.X68"
    INCLUDE "MOVE&RESETLANES.X68"
    INCLUDE "PLAYERMOVEMENT.X68"
    INCLUDE "RESETENEMY.X68"
    INCLUDE "DRAWPLAYERDATA.X68"
    INCLUDE "DRAW&INPUT.X68"
    INCLUDE "DRAWLANES.X68"
    INCLUDE "DRAWPLAYER.X68"
    INCLUDE "DRAWENEMIES.X68"
    INCLUDE "CHECKCOLLISION.X68"
    INCLUDE "DRAWMENU.X68"
    INCLUDE "EXIT.X68"
* Put variables and constants here
    INCLUDE "RESERVATIONS.X68"

    END    START        ; last line of source














*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~

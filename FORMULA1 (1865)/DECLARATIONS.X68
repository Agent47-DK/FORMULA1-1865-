*-----------------------------------------------------------
* Section       : Trap Codes
* Description   : Trap Codes used throughout StarterKit
*-----------------------------------------------------------
* Trap CODES
TC_SCREEN   EQU         33          ; Screen size information trap code
TC_S_SIZE   EQU         00          ; Places 0 in D1.L to retrieve Screen width and height in D1.L
                                    ; First 16 bit Word is screen Width and Second 16 bits is screen Height
TC_KEYCODE  EQU         19          ; Check for pressed keys
TC_DBL_BUF  EQU         92          ; Double Buffer Screen Trap Code
TC_CURSR_P  EQU         11          ; Trap code cursor position

TC_EXIT     EQU         09          ; Exit Trapcode

*-----------------------------------------------------------
* Section       : Charater Setup
* Description   : Size of Player, Enemy and Lane properties
* of these characters e.g Starting Positions and Sizes
*-----------------------------------------------------------
PLYR_W_INIT EQU         15          ; Players initial Width
PLYR_H_INIT EQU         15          ; Players initial Height

RIGHT_TRUE  EQU         01          ; Boolean true for right
CENTER_TRUE EQU         01          ; Boolean false for right ;will be used to check player position
FALSE       EQU         00

LANE_W_INIT EQU         12          ; Players initial Width
LANE_H_INIT EQU         60          ; Players initial Height

ENMY_W_INIT EQU         15          ; Enemy initial Width
ENMY_H_INIT EQU         15          ; Enemy initial Height

DRIVE_INDEX EQU         00          ; PLAYER DRIVE SOUND

*-----------------------------------------------------------
* Section       : Game Stats
* Description   : Points
*-----------------------------------------------------------
POINTS      EQU         01          ; Points added
LEVEL2      EQU         02          ; LEVEL 2 SPEED
LEVEL3      EQU         03          ; LEVEL 3 SPEED
LEVEL4      EQU         04          ; LEVEL 3 SPEED
LEVEL5      EQU         05          ; LEVEL 3 SPEED

GOAL1      EQU          $7D0        ; GOAL 1500
GOAL2      EQU          $FA0        ; GOAL 4000 SPEED
GOAL3      EQU          $1770       ; LEVEL 6000 SPEED
GOAL4      EQU          $2710       ; LEVEL 10000 SPEED


*-----------------------------------------------------------
* Section       : Keyboard Keys
* Description   : Left, right and escape or three functioning keys
* Left to MOVELEFT, Right to MOVERIGHT and Escape to Exit Game
*-----------------------------------------------------------
ESCAPE      EQU         $1B         ; Escape ASCII Keycode
LEFT        EQU         $25        ; LEFT KEYCODE
RIGHT       EQU         $27        ; LEFT KEYCODE
ENTER       EQU         $0D

*-----------------------------------------------------------
* Section       : Graphic Colors
* Description   : Screen Pixel Color
*-----------------------------------------------------------
WHITE           EQU     $00FFFFFF
RED             EQU     $000000FF

*-----------------------------------------------------------
* Section       : Menu Animation
* Description   : Screen Pixel Color
*-----------------------------------------------------------
MENU_ENMY_W_INIT EQU         08          ; Enemy initial Width
MENU_ENMY_H_INIT EQU         08          ; Enemy initial Height

MENU_PLYR_W_INIT EQU         08          ; Players initial Width
MENU_PLYR_H_INIT EQU         08          ; Players initial Height































*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~

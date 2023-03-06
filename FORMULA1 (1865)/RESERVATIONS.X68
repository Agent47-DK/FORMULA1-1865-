*-----------------------------------------------------------
* Section       : Graphic Colors
* Description   : Screen Pixel Color
*-----------------------------------------------------------
WHITE           EQU     $00FFFFFF
RED             EQU     $000000FF

*-----------------------------------------------------------
* Section       : Screen Size
* Description   : Screen Width and Height
*-----------------------------------------------------------
SCREEN_W        DS.W    01  ; Reserve Space for Screen Width
SCREEN_H        DS.W    01  ; Reserve Space for Screen Height

MIDDLE_X        DS.L    01  ; Reserve Space for Mid Point OfScreen Width
MIDDLE_y        DS.L    01  ; Reserve Space for Mid Point OfScreen Height

*-----------------------------------------------------------
* Section       : Audio Files
* Description   : Used for storing Keypresses
*-----------------------------------------------------------
;DRIVE_WAV        DC.B    'drive.wav',0        ; Jump Sound


*-----------------------------------------------------------
* Section       : Keyboard Input
* Description   : Used for storing Keypresses
*-----------------------------------------------------------
CURRENT_KEY     DS.L    01  ; Reserve Space for Current Key Pressed
*-----------------------------------------------------------
* Section       : Character Positions and Lanes
* Description   : Player, Lane and Enemy Position Memory Locations
*-----------------------------------------------------------
PLAYER_X        DS.L    01  ; Reserve Space for Player X Position
PLAYER_Y        DS.L    01  ; Reserve Space for Player Y Position

PLAYER_SCORE    DS.L    01  ; Reserve Space for Player Score
LEVEL_DISTANCE  DS.L    01  ; Reserve Spce for Distance
PLAYER_GOAL     DS.L    01  ;
PLAYER_LEVEL    DS.L    01  ;

LANE_X          DS.L    01  ; Reserve Space for Player X Position
LANE_Y          DS.L    01  ; Reserve Space for Player Y Position

PLAYER_ON_LEFT  DS.L    01  ; Reserve Space for Player Left Position
PLAYER_ON_RIGHT DS.L    01  ; Reserve Space for Player Right Position
PLAYER_ON_CENTER  DS.L    01  ; Reserve Space for Player Left Position

ENEMY_X         DS.L    01  ; Reserve Space for Enemy X Position
ENEMY_Y         DS.L    01  ; Reserve Space for Enemy Y Position
ENEMY_X1        DS.L    01  ; Reserve Space for Enemy X Position
ENEMY_Y1        DS.L    01  ; Reserve Space for Enemy Y Position
ENEMY_X2        DS.L    01  ; Reserve Space for Enemy X Position
ENEMY_Y2        DS.L    01  ; Reserve Space for Enemy Y Position
ENEMY_X3        DS.L    01  ; Reserve Space for Enemy X Position
ENEMY_Y3        DS.L    01  ; Reserve Space for Enemy Y Position
ENEMY_X4        DS.L    01  ; Reserve Space for Enemy X Position
ENEMY_Y4        DS.L    01  ; Reserve Space for Enemy Y Position
ENEMY_X5        DS.L    01  ; Reserve Space for Enemy X Position
ENEMY_Y5        DS.L    01  ; Reserve Space for Enemy Y Position
ENEMY_X6        DS.L    01  ; Reserve Space for Enemy X Position
ENEMY_Y6        DS.L    01  ; Reserve Space for Enemy Y Position
ENEMY_X7        DS.L    01  ; Reserve Space for Enemy X Position
ENEMY_Y7        DS.L    01  ; Reserve Space for Enemy Y Position
ENEMY_X8        DS.L    01  ; Reserve Space for Enemy X Position
ENEMY_Y8        DS.L    01  ; Reserve Space for Enemy Y Position
ENEMY_X9        DS.L    01  ; Reserve Space for Enemy X Position
ENEMY_Y9        DS.L    01  ; Reserve Space for Enemy Y Position
ENEMY_X10       DS.L    01  ; Reserve Space for Enemy X Position
ENEMY_Y10       DS.L    01  ; Reserve Space for Enemy Y Position

MENU_PLAYER_X       DS.L    01  ; Reserve Space for Enemy X Position
MENU_PLAYER_Y       DS.L    01  ; Reserve Space for Enemy Y Position

MENU_ENEMY_X       DS.L    01  ; Reserve Space for Enemy X Position
MENU_ENEMY_Y       DS.L    01  ; Reserve Space for Enemy Y Position

ENEMY_SPEED     DS.L    01  ; Reserve Space for Enemy Y Position
LANE_SPEED      DS.L    01  ; Reserve Space for Enemy Y Position

*-----------------------------------------------------------
* Section       : Messages
* Description   : Messages to Print on Console, names should be
* self documenting
*-----------------------------------------------------------
SCORE_MSG       DC.B    'Score', 0       ; Score Message
DISTANCE_MSG    DC.B    'Distance', 0       ; Score Message
KEYCODE_MSG     DC.B    'KeyCode : ', 0     ; Keycode Message
GOAL_MSG        DC.B    'GOAL', 0       ; TO Message
LEVEL_MSG       DC.B    'LEVEL', 0       ; TO Message

MOTORSPORT_MSG  DC.B    'MOTORSPORT', 0       ; TO Message
FORMULA1_MSG    DC.B    'FORMULA1 (1865)', 0       ; TO Message
START_MSG       DC.B    'ENTER-KEY TO START RACE', 0       ; TO Message
NOTE_MSG        DC.B    '<LEFT> ARROW KEY TO STEER LEFT ', 0       ; TO Message
NOTE2_MSG       DC.B    '<RIGHT> ARROW KEY TO STEER RIGHT', 0 
NOTE3_MSG       DC.B    'PRESS & HOLD KEY <ENTER> TO PAUSE', 0 
NOTE4_MSG       DC.B    '<ESCAPE> KEY TO EXIT', 0 



















































*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~

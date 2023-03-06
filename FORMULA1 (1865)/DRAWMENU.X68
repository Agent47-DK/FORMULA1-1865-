*-----------------------------------------------------------
* Subroutine    : Draw
* Description   : Draw Menu
*-----------------------------------------------------------
DRAW_MENU: 
    ; Enable back buffer
    MOVE.B  #94,        D0
    TRAP    #15

    ; Clear the screen
    MOVE.B	#TC_CURSR_P,D0          ; Set Cursor Position
	MOVE.W	#$FF00,     D1          ; Clear contents
	TRAP    #15                     ; Trap (Perform action)

    BSR     DRAW_MENU_DATA          ; Draw Draw Score, HUD, Player X and Y
    BSR     DRAW_MENU_PLAYER
    BSR     DRAW_MENU_ENEMY
    RTS

DRAW_MENU_DATA:
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)    
    ; Show MOTORSPORT Message
    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$1A02,     D1          ; Col 02, Row 01
    TRAP    #15                     ; Trap (Perform action)
    MOVE.L  #21, D0
    MOVE.L  #$0000FF00,D1             ; Set green color
    MOVE.L  #$012B0001,D2           ; Set bold, 15 point, Fixedsys font
    TRAP    #15                     ; Call Task 21 Text I/O to set font properties
    LEA     MOTORSPORT_MSG,  A1             ; Score Message
    MOVE    #13,        D0          ; No Line feed
    TRAP    #15                     ; Trap (Perform action)
    
    ; Show FORMULA 1 Message
    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$1803,     D1          ; Col 02, Row 01
    TRAP    #15                     ; Trap (Perform action)
    MOVE.L  #21, D0
    MOVE.L  #$0000FF00,D1             ; Set green color
    MOVE.L  #$012B0001,D2           ; Set bold, 15 point, Fixedsys font
    TRAP    #15 
    LEA     FORMULA1_MSG,  A1             ; Score Message
    MOVE    #13,        D0          ; No Line feed
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, CO-ORDINATES FOR LINE BARRIER
    MOVE.L  MIDDLE_X,   D1          ; X
    ADD.L   #85,        D1
    MOVE.L  #250,   D2          ; Y
    MOVE.L  MIDDLE_X,   D3
    ADD.L   #85,        D3
    MOVE.L  MIDDLE_Y,   D4
    ADD.L   #100,        D4 
    CLR.L D5
    
    ; Draw LINE
    MOVE.B  #84,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)
    
     ; Set X, Y, CO-ORDINATES FOR LINE BARRIER
    MOVE.L  MIDDLE_X,   D1          ; X
    SUB.L   #59,        D1
    MOVE.L  #250,   D2          ; Y
    MOVE.L  MIDDLE_X,   D3
    SUB.L   #59,    D3
    MOVE.L  MIDDLE_Y,   D4
    ADD.L   #100,        D4 
 
    
    ; Draw LINE
    MOVE.B  #84,        D0          ; Draw Line
    TRAP    #15                     ; Trap (Perform action)
    
    ; Show START Message
    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$2311,     D1          ; Col 02, Row 01
    TRAP    #15                     ; Trap (Perform action)
    MOVE.L  #21, D0
    MOVE.L  #$0000FF,D1             ; Set green color
    MOVE.L  #$011A0001,D2           ; Set bold, 15 point, Fixedsys font
    TRAP    #15                     ; Call Task 21 Text I/O to set font properties
    LEA     START_MSG,  A1             ; Score Message
    MOVE    #13,        D0          ; No Line feed
    TRAP    #15                     ; Trap (Perform action)
    
    ; Show NOTE Message
    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$2B19,     D1          ; Col 02, Row 01
    TRAP    #15                     ; Trap (Perform action)
    MOVE.L  #21, D0
    MOVE.L  #$FFFFFF,D1             ; Set green color
    MOVE.L  #$01150001,D2           ; Set bold, 15 point, Fixedsys font
    TRAP    #15                     ; Call Task 21 Text I/O to set font properties
    LEA     NOTE_MSG,  A1             ; Score Message
    MOVE    #13,        D0          ; No Line feed
    TRAP    #15                     ; Trap (Perform action)
    
    ; Show NOTE2 Message
    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$2B1A,     D1          ; Col 02, Row 01
    TRAP    #15                     ; Trap (Perform action)
    MOVE.L  #21, D0
    MOVE.L  #$FFFFFF,D1             ; Set green color
    MOVE.L  #$01150001,D2           ; Set bold, 15 point, Fixedsys font
    TRAP    #15                     ; Call Task 21 Text I/O to set font properties
    LEA     NOTE2_MSG,  A1             ; Score Message
    MOVE    #13,        D0          ; No Line feed
    TRAP    #15                     ; Trap (Perform action)
    
    ; Show NOTE3 Message
    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$2B1B,     D1          ; Col 02, Row 01
    TRAP    #15                     ; Trap (Perform action)
    MOVE.L  #21, D0
    MOVE.L  #$FFFFFF,D1             ; Set green color
    MOVE.L  #$01150001,D2           ; Set bold, 15 point, Fixedsys font
    TRAP    #15                     ; Call Task 21 Text I/O to set font properties
    LEA     NOTE3_MSG,  A1             ; Score Message
    MOVE    #13,        D0          ; No Line feed
    TRAP    #15                     ; Trap (Perform action)
    
    ; Show NOTE3 Message
    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$2B1C,     D1          ; Col 02, Row 01
    TRAP    #15                     ; Trap (Perform action)
    MOVE.L  #21, D0
    MOVE.L  #$FFFFFF,D1             ; Set green color
    MOVE.L  #$01150001,D2           ; Set bold, 15 point, Fixedsys font
    TRAP    #15                     ; Call Task 21 Text I/O to set font properties
    LEA     NOTE4_MSG,  A1             ; Score Message
    MOVE    #13,        D0          ; No Line feed
    TRAP    #15                     ; Trap (Perform action)
             
    RTS
    
*-----------------------------------------------------------
* Subroutine    : Draw PLAYER
* Description   : Draw Menu PLAYER
*-----------------------------------------------------------
DRAW_MENU_PLAYER:
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel
    MOVE.L  MENU_PLAYER_X ,   D1          ; X
    MOVE.L  MENU_PLAYER_Y ,   D2          ; Y
    MOVE.L  MENU_PLAYER_X ,   D3
    ADD.L   #PLYR_W_INIT,   D3      ; Width
    MOVE.L  MENU_PLAYER_Y,   D4 
    ADD.L   #PLYR_H_INIT,   D4      ; Height
    
    ; Draw Player
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$000000FF, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  MENU_PLAYER_X ,     D1
    ADD.L   #01,        D1
    MOVE.L  MENU_PLAYER_Y,     D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15

    
    ;SET 2ND PIXEL
    MOVE.L  MENU_PLAYER_X ,   D1          ; X
    SUB.L   #17,     D1             ; RIGHT
    MOVE.L  MENU_PLAYER_Y,   D2          ; Y
    SUB.L   #15,         D2          ; DOWN
    MOVE.L  D1,         D3
    ADD.L   #PLYR_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #PLYR_H_INIT,   D4      ; Height
    ; Draw Pixel
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)    
    ;SET THIRD PIXEL
    MOVE.L  MENU_PLAYER_X,   D1          ; X
    SUB.L   #17,      D1            ; DOWN
    MOVE.L  MENU_PLAYER_Y,   D2          ; Y
    MOVE.L  D1,         D3
    ADD.L   #PLYR_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #PLYR_H_INIT,   D4      ; Height
    
    ; Draw Pixel
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)    
    ;SET 4TH PIXEL
    MOVE.L  MENU_PLAYER_X,   D1          ; X
    SUB.L   #32,        D1
    MOVE.L  MENU_PLAYER_Y,   D2          ; Y
    MOVE.L  D1,         D3
    ADD.L   #PLYR_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #PLYR_H_INIT,   D4      ; Height
    
    ; Draw Pixel
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)
    
    ;SET 5TH PIXEL
    MOVE.L  MENU_PLAYER_X,   D1          ; X
    SUB.L   #17,        D1
    MOVE.L  MENU_PLAYER_Y,   D2          ; Y
    ADD.L   #16,        D2
    MOVE.L  D1,         D3
    ADD.L   #PLYR_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #PLYR_H_INIT,   D4      ; Height
    
    ; Draw Pixel
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)
    
    ;SET 6TH PIXEL
    MOVE.L  MENU_PLAYER_X ,   D1          ; X
    SUB.L   #32,        D1
    MOVE.L  MENU_PLAYER_Y,   D2          ; Y
    ADD.L   #31,        D2
    MOVE.L  D1,         D3
    ADD.L   #PLYR_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #PLYR_H_INIT,   D4      ; Height
    
    ; Draw Pixel
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)
    
    MOVE.L  MENU_PLAYER_X,   D1          ; X
    SUB.L   #01,        D1
    MOVE.L  MENU_PLAYER_Y,   D2          ; Y
    ADD.L   #31,        D2
    MOVE.L  D1,         D3
    ADD.L   #PLYR_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #PLYR_H_INIT,   D4      ; Height
    
    ; Draw Pixel
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action
    
    CLR.L   D1
    CLR.L   D2
    CLR.L   D3
    CLR.L   D4
    RTS                             ; Return to subroutine
    

*-----------------------------------------------------------
* Subroutine    : Draw Menu Enemy
* Description   : Draw Enemy Square
*-----------------------------------------------------------
DRAW_MENU_ENEMY: ;RIGHT
    ; Set Pixel Colors
    MOVE.L  #WHITE,       D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height
    MOVE.L  MENU_ENEMY_X,    D1          ; X
    MOVE.L  MENU_ENEMY_Y,    D2          ; Y 
    MOVE.L  MENU_ENEMY_X,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  MENU_ENEMY_Y,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Enemy    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$0000FF00, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  MENU_ENEMY_X,     D1
    ADD.L   #01,        D1
    MOVE.L  MENU_ENEMY_Y,     D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15

    ; Set 2nd Pixel
    MOVE.L  MENU_ENEMY_X,    D1          ; X
    ADD.L   #15,        D1
    MOVE.L  MENU_ENEMY_Y,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 3rd Pixel
    MOVE.L  MENU_ENEMY_X,    D1          ; X
    ADD.L   #00,        D1
    MOVE.L  MENU_ENEMY_Y,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 4rd Pixel
    MOVE.L  MENU_ENEMY_X,    D1          ; X
    SUB.L   #15,        D1
    MOVE.L  MENU_ENEMY_Y,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 5Th Pixel
    MOVE.L  MENU_ENEMY_X,    D1          ; X
    ADD.L   #00,        D1
    MOVE.L  MENU_ENEMY_Y,    D2          ; Y
    ADD.L   #30,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 6Th Pixel
    MOVE.L  MENU_ENEMY_X,    D1          ; X
    ADD.L   #15,        D1
    MOVE.L  MENU_ENEMY_Y,    D2          ; Y
    ADD.L   #45,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height

    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)    
    
    ; Set 6Th Pixel
    MOVE.L  MENU_ENEMY_X,    D1          ; X
    SUB.L   #15,        D1
    MOVE.L  MENU_ENEMY_Y,    D2          ; Y
    ADD.L   #45,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00000000, D1
    TRAP    #15
    
   


    
    RTS                             ; Return to subroutine
















*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~

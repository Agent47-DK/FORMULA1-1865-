*-----------------------------------------------------------
* Subroutine    : Draw Player
* Description   : Draw Player Square
*-----------------------------------------------------------
DRAW_PLAYER:
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel
    MOVE.L  PLAYER_X,   D1          ; X
    MOVE.L  PLAYER_Y,   D2          ; Y
    MOVE.L  PLAYER_X,   D3
    ADD.L   #PLYR_W_INIT,   D3      ; Width
    MOVE.L  PLAYER_Y,   D4 
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
    MOVE.L  PLAYER_X,     D1
    ADD.L   #01,        D1
    MOVE.L  PLAYER_Y,     D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15

    
    ;SET 2ND PIXEL
    MOVE.L  PLAYER_X,   D1          ; X
    SUB.L   #17,     D1             ; RIGHT
    MOVE.L  PLAYER_Y,   D2          ; Y
    SUB.L   #15,         D2          ; DOWN
    MOVE.L  D1,         D3
    ADD.L   #PLYR_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #PLYR_H_INIT,   D4      ; Height
    ; Draw Pixel
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)    
    ;SET THIRD PIXEL
    MOVE.L  PLAYER_X,   D1          ; X
    SUB.L   #17,      D1            ; DOWN
    MOVE.L  PLAYER_Y,   D2          ; Y
    MOVE.L  D1,         D3
    ADD.L   #PLYR_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #PLYR_H_INIT,   D4      ; Height
    
    ; Draw Pixel
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)    
    ;SET 4TH PIXEL
    MOVE.L  PLAYER_X,   D1          ; X
    SUB.L   #32,        D1
    MOVE.L  PLAYER_Y,   D2          ; Y
    MOVE.L  D1,         D3
    ADD.L   #PLYR_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #PLYR_H_INIT,   D4      ; Height
    
    ; Draw Pixel
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)
    
    ;SET 5TH PIXEL
    MOVE.L  PLAYER_X,   D1          ; X
    SUB.L   #17,        D1
    MOVE.L  PLAYER_Y,   D2          ; Y
    ADD.L   #16,        D2
    MOVE.L  D1,         D3
    ADD.L   #PLYR_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #PLYR_H_INIT,   D4      ; Height
    
    ; Draw Pixel
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)
    
    ;SET 6TH PIXEL
    MOVE.L  PLAYER_X,   D1          ; X
    SUB.L   #32,        D1
    MOVE.L  PLAYER_Y,   D2          ; Y
    ADD.L   #31,        D2
    MOVE.L  D1,         D3
    ADD.L   #PLYR_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #PLYR_H_INIT,   D4      ; Height
    
    ; Draw Pixel
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)
    
    MOVE.L  PLAYER_X,   D1          ; X
    SUB.L   #01,        D1
    MOVE.L  PLAYER_Y,   D2          ; Y
    ADD.L   #31,        D2
    MOVE.L  D1,         D3
    ADD.L   #PLYR_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #PLYR_H_INIT,   D4      ; Height
    
    ; Draw Pixel
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action



    
   
    
    
    
    RTS                             ; Return to subroutine






*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~

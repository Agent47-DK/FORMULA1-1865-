*-----------------------------------------------------------
* Subroutine    : Draw Enemy
* Description   : Draw Enemy Square
*-----------------------------------------------------------
DRAW_ENEMY: ;RIGHT
    ; Set Pixel Colors
    MOVE.L  #WHITE,       D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height
    MOVE.L  ENEMY_X,    D1          ; X
    MOVE.L  ENEMY_Y,    D2          ; Y 
    MOVE.L  ENEMY_X,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  ENEMY_Y,    D4 
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
    MOVE.L  ENEMY_X,     D1
    ADD.L   #01,        D1
    MOVE.L  ENEMY_Y,     D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15

    ; Set 2nd Pixel
    MOVE.L  ENEMY_X,    D1          ; X
    ADD.L   #15,        D1
    MOVE.L  ENEMY_Y,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 3rd Pixel
    MOVE.L  ENEMY_X,    D1          ; X
    ADD.L   #00,        D1
    MOVE.L  ENEMY_Y,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 4rd Pixel
    MOVE.L  ENEMY_X,    D1          ; X
    SUB.L   #15,        D1
    MOVE.L  ENEMY_Y,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 5Th Pixel
    MOVE.L  ENEMY_X,    D1          ; X
    ADD.L   #00,        D1
    MOVE.L  ENEMY_Y,    D2          ; Y
    ADD.L   #30,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 6Th Pixel
    MOVE.L  ENEMY_X,    D1          ; X
    ADD.L   #15,        D1
    MOVE.L  ENEMY_Y,    D2          ; Y
    ADD.L   #45,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height

    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)    
    
    ; Set 6Th Pixel
    MOVE.L  ENEMY_X,    D1          ; X
    SUB.L   #15,        D1
    MOVE.L  ENEMY_Y,    D2          ; Y
    ADD.L   #45,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)


    
    RTS                             ; Return to subroutine
    
*-----------------------------------------------------------
* Subroutine    : Draw Enemy
* Description   : Draw Enemy Square
*-----------------------------------------------------------
DRAW_ENEMY1: ;RIGHT
    ; Set Pixel Colors
    MOVE.L  #WHITE,       D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height
    MOVE.L  ENEMY_X1,    D1          ; X
    MOVE.L  ENEMY_Y1,    D2          ; Y 
    MOVE.L  ENEMY_X1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  ENEMY_Y1,    D4 
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
    MOVE.L  ENEMY_X1,     D1
    ADD.L   #01,        D1
    MOVE.L  ENEMY_Y1,     D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15

    ; Set 2nd Pixel
    MOVE.L  ENEMY_X1,    D1          ; X
    ADD.L   #15,        D1
    MOVE.L  ENEMY_Y1,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 3rd Pixel
    MOVE.L  ENEMY_X1,    D1          ; X
    ADD.L   #00,        D1
    MOVE.L  ENEMY_Y1,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 4rd Pixel
    MOVE.L  ENEMY_X1,    D1          ; X
    SUB.L   #15,        D1
    MOVE.L  ENEMY_Y1,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 5Th Pixel
    MOVE.L  ENEMY_X1,    D1          ; X
    ADD.L   #00,        D1
    MOVE.L  ENEMY_Y1,    D2          ; Y
    ADD.L   #30,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 6Th Pixel
    MOVE.L  ENEMY_X1,    D1          ; X
    ADD.L   #15,        D1
    MOVE.L  ENEMY_Y1,    D2          ; Y
    ADD.L   #45,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height

    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)    
    
    ; Set 6Th Pixel
    MOVE.L  ENEMY_X1,    D1          ; X
    SUB.L   #15,        D1
    MOVE.L  ENEMY_Y1,    D2          ; Y
    ADD.L   #45,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)


    
    RTS                             ; Return to subroutine


*-----------------------------------------------------------
* Subroutine    : Draw Enemy 2
* Description   : Draw Enemy Square
*-----------------------------------------------------------
DRAW_ENEMY2: ;CENTER
    ; Set Pixel Colors
    MOVE.L  #WHITE,       D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height
    MOVE.L  ENEMY_X2,    D1          ; X
    MOVE.L  ENEMY_Y2,    D2          ; Y 
    MOVE.L  ENEMY_X2,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  ENEMY_Y2,    D4 
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
    MOVE.L  ENEMY_X2,     D1
    ADD.L   #01,        D1
    MOVE.L  ENEMY_Y2,     D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15

    ; Set 2nd Pixel
    MOVE.L  ENEMY_X2,    D1          ; X
    ADD.L   #15,        D1
    MOVE.L  ENEMY_Y2,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 3rd Pixel
    MOVE.L  ENEMY_X2,    D1          ; X
    ADD.L   #00,        D1
    MOVE.L  ENEMY_Y2,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 4rd Pixel
    MOVE.L  ENEMY_X2,    D1          ; X
    SUB.L   #15,        D1
    MOVE.L  ENEMY_Y2,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 5Th Pixel
    MOVE.L  ENEMY_X2,    D1          ; X
    ADD.L   #00,        D1
    MOVE.L  ENEMY_Y2,    D2          ; Y
    ADD.L   #30,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 6Th Pixel
    MOVE.L  ENEMY_X2,    D1          ; X
    ADD.L   #15,        D1
    MOVE.L  ENEMY_Y2,    D2          ; Y
    ADD.L   #45,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height

    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)    
    
    ; Set 6Th Pixel
    MOVE.L  ENEMY_X2,    D1          ; X
    SUB.L   #15,        D1
    MOVE.L  ENEMY_Y2,    D2          ; Y
    ADD.L   #45,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    RTS                             ; Return to subroutine



*-----------------------------------------------------------
* Subroutine    : Draw Enemy 4
* Description   : Draw Enemy Square
*-----------------------------------------------------------
DRAW_ENEMY4: ;RIGHT

    ; Set X, Y, Width and Height
    MOVE.L  ENEMY_X4,    D1          ; X
    MOVE.L  ENEMY_Y4,    D2          ; Y 
    MOVE.L  ENEMY_X4,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  ENEMY_Y4,    D4 
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
    MOVE.L  ENEMY_X4,     D1
    ADD.L   #01,        D1
    MOVE.L  ENEMY_Y4,     D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15

    ; Set 2nd Pixel
    MOVE.L  ENEMY_X4,    D1          ; X
    ADD.L   #15,        D1
    MOVE.L  ENEMY_Y4,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 3rd Pixel
    MOVE.L  ENEMY_X4,    D1          ; X
    ADD.L   #00,        D1
    MOVE.L  ENEMY_Y4,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 4rd Pixel
    MOVE.L  ENEMY_X4,    D1          ; X
    SUB.L   #15,        D1
    MOVE.L  ENEMY_Y4,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 5Th Pixel
    MOVE.L  ENEMY_X4,    D1          ; X
    ADD.L   #00,        D1
    MOVE.L  ENEMY_Y4,    D2          ; Y
    ADD.L   #30,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 6Th Pixel
    MOVE.L  ENEMY_X4,    D1          ; X
    ADD.L   #15,        D1
    MOVE.L  ENEMY_Y4,    D2          ; Y
    ADD.L   #45,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height

    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)    
    
    ; Set 6Th Pixel
    MOVE.L  ENEMY_X4,    D1          ; X
    SUB.L   #15,        D1
    MOVE.L  ENEMY_Y4,    D2          ; Y
    ADD.L   #45,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    RTS                             ; Return to subroutine

*-----------------------------------------------------------
* Subroutine    : Draw Enemy 5
* Description   : Draw Enemy Square
*-----------------------------------------------------------
DRAW_ENEMY5: ;CENTER
    ; Set Pixel Colors
    MOVE.L  #WHITE,       D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height
    MOVE.L  ENEMY_X5,    D1          ; X
    MOVE.L  ENEMY_Y5,    D2          ; Y 
    MOVE.L  ENEMY_X5,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  ENEMY_Y5,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Enemy    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00FF0000, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  ENEMY_X5,     D1
    ADD.L   #01,        D1
    MOVE.L  ENEMY_Y5,     D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15

    ; Set 2nd Pixel
    MOVE.L  ENEMY_X5,    D1          ; X
    ADD.L   #15,        D1
    MOVE.L  ENEMY_Y5,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 3rd Pixel
    MOVE.L  ENEMY_X5,    D1          ; X
    ADD.L   #00,        D1
    MOVE.L  ENEMY_Y5,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 4rd Pixel
    MOVE.L  ENEMY_X5,    D1          ; X
    SUB.L   #15,        D1
    MOVE.L  ENEMY_Y5,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 5Th Pixel
    MOVE.L  ENEMY_X5,    D1          ; X
    ADD.L   #00,        D1
    MOVE.L  ENEMY_Y5,    D2          ; Y
    ADD.L   #30,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 6Th Pixel
    MOVE.L  ENEMY_X5,    D1          ; X
    ADD.L   #15,        D1
    MOVE.L  ENEMY_Y5,    D2          ; Y
    ADD.L   #45,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height

    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)    
    
    ; Set 7Th Pixel
    MOVE.L  ENEMY_X5,    D1          ; X
    SUB.L   #15,        D1
    MOVE.L  ENEMY_Y5,    D2          ; Y
    ADD.L   #45,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    RTS                             ; Return to subroutine

*-----------------------------------------------------------
* Subroutine    : Draw Enemy 6
* Description   : Draw Enemy Square
*-----------------------------------------------------------
DRAW_ENEMY6: ;CENTER
    ; Set Pixel Colors
    MOVE.L  #WHITE,       D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height
    MOVE.L  ENEMY_X6,    D1          ; X
    MOVE.L  ENEMY_Y6,    D2          ; Y 
    MOVE.L  ENEMY_X6,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  ENEMY_Y6,    D4 
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
    MOVE.L  ENEMY_X6,     D1
    ADD.L   #01,        D1
    MOVE.L  ENEMY_Y6,     D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15

    ; Set 2nd Pixel
    MOVE.L  ENEMY_X6,    D1          ; X
    ADD.L   #15,        D1
    MOVE.L  ENEMY_Y6,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 3rd Pixel
    MOVE.L  ENEMY_X6,    D1          ; X
    ADD.L   #00,        D1
    MOVE.L  ENEMY_Y6,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 4rd Pixel
    MOVE.L  ENEMY_X6,    D1          ; X
    SUB.L   #15,        D1
    MOVE.L  ENEMY_Y6,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 5Th Pixel
    MOVE.L  ENEMY_X6,    D1          ; X
    ADD.L   #00,        D1
    MOVE.L  ENEMY_Y6,    D2          ; Y
    ADD.L   #30,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 6Th Pixel
    MOVE.L  ENEMY_X6,    D1          ; X
    ADD.L   #15,        D1
    MOVE.L  ENEMY_Y6,    D2          ; Y
    ADD.L   #45,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height

    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)    
    
    ; Set 7Th Pixel
    MOVE.L  ENEMY_X6,    D1          ; X
    SUB.L   #15,        D1
    MOVE.L  ENEMY_Y6,    D2          ; Y
    ADD.L   #45,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    RTS                             ; Return to subroutine
    
*-----------------------------------------------------------
* Subroutine    : Draw Enemy 7
* Description   : Draw Enemy Square
*-----------------------------------------------------------
DRAW_ENEMY7: ;RIGHT

    ; Set X, Y, Width and Height
    MOVE.L  ENEMY_X7,    D1          ; X
    MOVE.L  ENEMY_Y7,    D2          ; Y 
    MOVE.L  ENEMY_X7,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  ENEMY_Y7,    D4 
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
    MOVE.L  ENEMY_X7,     D1
    ADD.L   #01,        D1
    MOVE.L  ENEMY_Y7,     D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15

    ; Set 2nd Pixel
    MOVE.L  ENEMY_X7,    D1          ; X
    ADD.L   #15,        D1
    MOVE.L  ENEMY_Y7,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 3rd Pixel
    MOVE.L  ENEMY_X7,    D1          ; X
    ADD.L   #00,        D1
    MOVE.L  ENEMY_Y7,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 4rd Pixel
    MOVE.L  ENEMY_X7,    D1          ; X
    SUB.L   #15,        D1
    MOVE.L  ENEMY_Y7,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 5Th Pixel
    MOVE.L  ENEMY_X7,    D1          ; X
    ADD.L   #00,        D1
    MOVE.L  ENEMY_Y7,    D2          ; Y
    ADD.L   #30,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 6Th Pixel
    MOVE.L  ENEMY_X7,    D1          ; X
    ADD.L   #15,        D1
    MOVE.L  ENEMY_Y7,    D2          ; Y
    ADD.L   #45,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height

    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)    
    
    ; Set 7Th Pixel
    MOVE.L  ENEMY_X7,    D1          ; X
    SUB.L   #15,        D1
    MOVE.L  ENEMY_Y7,    D2          ; Y
    ADD.L   #45,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    RTS                             ; Return to subroutine


*-----------------------------------------------------------
* Subroutine    : Draw Enemy 9
* Description   : Draw Enemy Square
*-----------------------------------------------------------
DRAW_ENEMY9: ;CENTER
    ; Set Pixel Colors
    MOVE.L  #WHITE,       D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height
    MOVE.L  ENEMY_X9,    D1          ; X
    MOVE.L  ENEMY_Y9,    D2          ; Y 
    MOVE.L  ENEMY_X9,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  ENEMY_Y9,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Enemy    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00FF0000, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  ENEMY_X9,     D1
    ADD.L   #01,        D1
    MOVE.L  ENEMY_Y9,     D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15

    ; Set 2nd Pixel
    MOVE.L  ENEMY_X9,    D1          ; X
    ADD.L   #15,        D1
    MOVE.L  ENEMY_Y9,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 3rd Pixel
    MOVE.L  ENEMY_X9,    D1          ; X
    ADD.L   #00,        D1
    MOVE.L  ENEMY_Y9,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 4rd Pixel
    MOVE.L  ENEMY_X9,    D1          ; X
    SUB.L   #15,        D1
    MOVE.L  ENEMY_Y9,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 5Th Pixel
    MOVE.L  ENEMY_X9,    D1          ; X
    ADD.L   #00,        D1
    MOVE.L  ENEMY_Y9,    D2          ; Y
    ADD.L   #30,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 6Th Pixel
    MOVE.L  ENEMY_X9,    D1          ; X
    ADD.L   #15,        D1
    MOVE.L  ENEMY_Y9,    D2          ; Y
    ADD.L   #45,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height

    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)    
    
    ; Set 7Th Pixel
    MOVE.L  ENEMY_X9,    D1          ; X
    SUB.L   #15,        D1
    MOVE.L  ENEMY_Y9,    D2          ; Y
    ADD.L   #45,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    RTS                             ; Return to subroutine
    
*-----------------------------------------------------------
* Subroutine    : Draw Enemy 10
* Description   : Draw Enemy Square
*-----------------------------------------------------------
DRAW_ENEMY10: ;RIGHT

    ; Set X, Y, Width and Height
    MOVE.L  ENEMY_X10,    D1          ; X
    MOVE.L  ENEMY_Y10,    D2          ; Y 
    MOVE.L  ENEMY_X10,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  ENEMY_Y10,    D4 
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
    MOVE.L  ENEMY_X10,     D1
    ADD.L   #01,        D1
    MOVE.L  ENEMY_Y10,     D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15

    ; Set 2nd Pixel
    MOVE.L  ENEMY_X10,    D1          ; X
    ADD.L   #15,        D1
    MOVE.L  ENEMY_Y10,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 3rd Pixel
    MOVE.L  ENEMY_X10,    D1          ; X
    ADD.L   #00,        D1
    MOVE.L  ENEMY_Y10,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 4rd Pixel
    MOVE.L  ENEMY_X10,    D1          ; X
    SUB.L   #15,        D1
    MOVE.L  ENEMY_Y10,    D2          ; Y
    ADD.L   #15,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 5Th Pixel
    MOVE.L  ENEMY_X10,    D1          ; X
    ADD.L   #00,        D1
    MOVE.L  ENEMY_Y10,    D2          ; Y
    ADD.L   #30,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    ; Set 6Th Pixel
    MOVE.L  ENEMY_X10,    D1          ; X
    ADD.L   #15,        D1
    MOVE.L  ENEMY_Y10,    D2          ; Y
    ADD.L   #45,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height

    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)    
    
    ; Set 7Th Pixel
    MOVE.L  ENEMY_X10,    D1          ; X
    SUB.L   #15,        D1
    MOVE.L  ENEMY_Y10,    D2          ; Y
    ADD.L   #45,        D2
    MOVE.L  D1,    D3
    ADD.L   #ENMY_W_INIT,   D3      ; Width
    MOVE.L  D2,    D4 
    ADD.L   #ENMY_H_INIT,   D4      ; Height
    
    ; Draw Pixel    
    MOVE.B  #87,        D0          ; Draw Enemy
    TRAP    #15                     ; Trap (Perform action)
    
    RTS                             ; Return to subroutine




















*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~

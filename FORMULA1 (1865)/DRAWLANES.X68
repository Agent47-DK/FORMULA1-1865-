*-----------------------------------------------------------
* Subroutine    : Draw Lanes
* Description   : Draw Road lanes
*-----------------------------------------------------------
DRAW_LANES:
    ; MIDDLE RIGHT
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    ADD.L   #70,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00000000, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    ADD.L   #70,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15
    
            ;2
     ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    ADD.L   #70,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    ADD.L   #60,        D2
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00FAF9F6, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    ADD.L   #70,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #60,        D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15
    
            ;3
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    ADD.L   #70,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    ADD.L   #120,        D2
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00000000, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    ADD.L   #70,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #120,        D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15
    
            ;4
     ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    ADD.L   #70,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    ADD.L   #180,        D2
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00FAF9F6, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    ADD.L   #70,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #180,        D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15

            ;5
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    ADD.L   #70,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    ADD.L   #240,        D2
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00000000, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    ADD.L   #70,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #240,        D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15
            ;6
     ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    ADD.L   #70,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    ADD.L   #300,        D2
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00FAF9F6, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    ADD.L   #70,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #300,        D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15
    
            ;7
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    ADD.L   #70,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    ADD.L   #360,        D2
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00000000, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    ADD.L   #70,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #360,        D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15
    
        ;8
     ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    ADD.L   #70,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    ADD.L   #420,        D2
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00FAF9F6, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    ADD.L   #70,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #420,        D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15
    
        ;9
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    ADD.L   #70,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    ADD.L   #480,        D2
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00000000, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    ADD.L   #70,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #480,        D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15
    
    ;10
     ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    ADD.L   #70,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    ADD.L   #540,        D2
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00FAF9F6, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    ADD.L   #70,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #540,        D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15

     ;11
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    ADD.L   #70,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    ADD.L   #600,        D2
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00000000, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    ADD.L   #70,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #600,        D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15





    
    ;MIDDLE LEFT
  
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    SUB.L   #55,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00000000, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    SUB.L   #55,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15
    
            ;2
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    SUB.L   #55,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    ADD.L   #60,        D2
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00FAF9F6, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    SUB.L   #55,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #60,        D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15
            
            ;3
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    SUB.L   #55,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    ADD.L   #120,        D2
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00000000, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    SUB.L   #55,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #120,        D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15
            ;4
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    SUB.L   #55,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    ADD.L   #180,        D2
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00FAF9F6, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    SUB.L   #55,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #180,        D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15
    
            ;5
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    SUB.L   #55,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    ADD.L   #240,        D2
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00000000, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    SUB.L   #55,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #240,        D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15
    
            ;6
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    SUB.L   #55,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    ADD.L   #300,        D2
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00FAF9F6, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    SUB.L   #55,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #300,        D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15

            ;7
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    SUB.L   #55,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    ADD.L   #360,        D2
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00000000, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    SUB.L   #55,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #360,        D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15
    
            ;8
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    SUB.L   #55,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    ADD.L   #420,        D2
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00FAF9F6, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    SUB.L   #55,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #420,        D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15
    
    ;9
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    SUB.L   #55,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    ADD.L   #480,        D2
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00000000, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    SUB.L   #55,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #480,        D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15
    
    ;10
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    SUB.L   #55,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    ADD.L   #540,        D2
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00FAF9F6, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    SUB.L   #55,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #540,        D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15

    ;11
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, Width and Height For 1st pixel BOTTOM RIGHT
    MOVE.L  LANE_X,     D1          ; X-AXIS VALUE
    SUB.L   #55,        D1
    MOVE.L  LANE_Y,     D2          ; Y-AXIS VALUE
    ADD.L   #600,        D2
    MOVE.L  D1,         D3
    ADD.L   #LANE_W_INIT,   D3      ; Width
    MOVE.L  D2,         D4 
    ADD.L   #LANE_H_INIT,   D4      ; Height
     
    ; Draw PIXEL
    MOVE.B  #87,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)

    ; Set Fill color
    MOVE.L  #81,        D0
    MOVE.L  #$00000000, D1
    TRAP    #15
    
    ; FILL
    MOVE.L  #89,        D0
    MOVE.L  LANE_X,     D1
    SUB.L   #55,        D1
    ADD.L   #01,        D1
    MOVE.L  LANE_Y,     D2
    ADD.L   #600,        D2
    ADD.L   #01,        D2
    SUB.L   #02,        D3
    SUB.L   #02,        D4
    TRAP    #15


    
    INCLUDE "UPPERLANES.X68"

            
   
   

    


    
    
    
    
        
        
    
    RTS                             ; Return to subroutine




















*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~

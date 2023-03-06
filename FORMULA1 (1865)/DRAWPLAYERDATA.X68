
*-----------------------------------------------------------
* Subroutine    : Draw Player Data
* Description   : Draw Player X, Y, Velocity, Gravity and OnGround
*-----------------------------------------------------------
DRAW_PLYR_DATA:
    CLR.L   D1                      ; Clear contents of D1 (XOR is faster)
    
    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ; Set X, Y, CO-ORDINATES FOR LINE BARRIER
    MOVE.L  MIDDLE_X,   D1          ; X
    ADD.L   #85,        D1
    MOVE.L  #00,   D2          ; Y
    MOVE.L  MIDDLE_X,   D3
    ADD.L   #85,        D3
    MOVE.L  MIDDLE_Y,   D4
    MULS    #02,        D4 
    CLR.L D5
    
    ; Draw LINE
    MOVE.B  #84,        D0          ; Draw Player
    TRAP    #15                     ; Trap (Perform action)
    
     ; Set X, Y, CO-ORDINATES FOR LINE BARRIER
    MOVE.L  MIDDLE_X,   D1          ; X
    SUB.L   #59,        D1
    MOVE.L  #00,   D2          ; Y
    MOVE.L  MIDDLE_X,   D3
    SUB.L   #59,    D3
    MOVE.L  MIDDLE_Y,   D4
    MULS    #02,        D4 
 
    
    ; Draw LINE
    MOVE.B  #84,        D0          ; Draw Line
    TRAP    #15                     ; Trap (Perform action)

*-----------------------------------------------------------
* Function       : Draw Points Guage
* Description   : Draw Points Gauge Using circles

    ;draw blue circle

    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$0301,     D1          ; Col 10, Row 1
    TRAP    #15
    
    move.l #81,   d0
    move.l #$00ff0000, d1
    trap   #15
        
    move.l  #88, d0
    move.l #100, d1
    move.l #100, d2
    move.l #400, d3
    move.l #400, d4
        
    trap #15
    
    move.l #81,   d0
    move.l #$00000000, d1
    trap   #15
        
    move.l  #88, d0
    move.l #130, d1
    move.l #130, d2
    move.l #370, d3
    move.l #370, d4
        
    trap #15
    
    ; draw black rectangle to form an arc
    move.l #81,   d0
    move.l #$00000000, d1
    trap   #15

    move.l #80, d0         ; set line thickness to zero
    trap   #15

    move.l  #88, d0        ; draw black rectangle
    move.l #112, d1        ; starting X coordinate
    move.l #300, d2        ; starting Y coordinate
    move.l #388, d3        ; ending X coordinate
    move.l #550, d4        ; ending Y coordinate
    trap #15
    
    

    
    ; Player Score Message
    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$0A05,     D1          ; Col 10, Row 05
    TRAP    #15                     ; Trap (Perform action)
    MOVE.L  #21, D0
    MOVE.L  #$00FF00,D1             ; Set green color
    MOVE.L  #$011B0001,D2           ; Set bold, 15 point, Fixedsys font
    TRAP    #15                     ; Call Task 21 Text I/O to set font properties
    LEA     SCORE_MSG,  A1          ; Score Message
    MOVE    #13,        D0          ; No Line feed
    TRAP    #15                     ; Trap (Perform action)
    
    ; Player Score Value
    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$0604,     D1          ; Col 09, Row 01
    TRAP    #15                     ; Trap (Perform action)
    MOVE.L  #21, D0
    MOVE.L  #$FFFFFF,D1             ; Set green color
    MOVE.L  #$01220001,D2           ; Set bold, 15 point, Fixedsys font
    TRAP    #15                     ; Call Task 21 Text I/O to set font properties
    MOVE.B  #03,        D0          ; Display number at D1.L
    MOVE.L  PLAYER_SCORE,D1         ; Move Score to D1.L
    TRAP    #15                     ; Trap (Perform action)


*-----------------------------------------------------------
* Fuction       : Draw Distance Guage
* Description   : Draw Distance to next goal Gauge Using circles

    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ;draw blue circle

    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$0801,     D1          ; Col 10, Row 1
    TRAP    #15
    
    move.l #81,   d0
    move.l #$00ff0000, d1
    trap   #15
        
    move.l  #88, d0
    move.l #1500, d1
    move.l #100, d2
    move.l #1800, d3
    move.l #400, d4
        
    trap #15
    
    move.l #81,   d0
    move.l #$00000000, d1
    trap   #15
        
    move.l  #88, d0
    move.l #1530, d1
    move.l #130, d2
    move.l #1770, d3
    move.l #370, d4
        
    trap #15
    
    ; draw black rectangle to form an arc
    move.l #81,   d0
    move.l #$00000000, d1
    trap   #15

    move.l #80, d0         ; set line thickness to zero
    trap   #15

    move.l  #88, d0        ; draw black rectangle
    move.l #1522, d1        ; starting X coordinate
    move.l #300, d2        ; starting Y coordinate
    move.l #1788, d3        ; ending X coordinate
    move.l #550, d4        ; ending Y coordinate
    trap #15
    
    ; Player Distance Message
    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$4B05,     D1          ; Col 10, Row 05
    TRAP    #15                     ; Trap (Perform action)
    MOVE.L  #21, D0
    MOVE.L  #$00FF00,D1             ; Set green color
    MOVE.L  #$01190001,D2           ; Set bold, 15 point, Fixedsys font
    TRAP    #15                     ; Call Task 21 Text I/O to set font properties
    LEA     DISTANCE_MSG,  A1          ; Score Message
    MOVE    #13,        D0          ; No Line feed
    TRAP    #15                     ; Trap (Perform action)
    
    ; DISTANCE TO LEVEL
    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$3004,     D1          ; Col 09, Row 01
    TRAP    #15                     ; Trap (Perform action)
    MOVE.L  #21, D0
    MOVE.L  #$FFFFFF,D1             ; Set green color
    MOVE.L  #$01220001,D2           ; Set bold, 15 point, Fixedsys font
    TRAP    #15                     ; Call Task 21 Text I/O to set font properties
    MOVE.B  #03,        D0          ; Display number at D1.L
    MOVE.L  LEVEL_DISTANCE,D1         ; Move Score to D1.L
    TRAP    #15                     ; Trap (Perform action)
    
*-----------------------------------------------------------
* Fuction       : Draw level Guage
* Description   : Draw Distance to next goal Gauge Using circles

    ; Set Pixel Colors
    MOVE.L  #WHITE,     D1          ; Set Background color
    MOVE.B  #80,        D0          ; Task for Background Color
    TRAP    #15                     ; Trap (Perform action)

    ;draw blue circle

    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$0801,     D1          ; Col 10, Row 1
    TRAP    #15
    
    move.l #81,   d0
    move.l #$000000FF, d1
    trap   #15
        
    move.l  #88, d0
    move.l #1200, d1
    move.l #400, d2
    move.l #1500, d3
    move.l #700, d4
        
    trap #15
    
    move.l #81,   d0
    move.l #$00000000, d1
    trap   #15
        
    move.l  #88, d0
    move.l #1230, d1
    move.l #430, d2
    move.l #1470, d3
    move.l #670, d4
        
    trap #15
    
    ; draw black rectangle to form an arc
    move.l #81,   d0
    move.l #$00000000, d1
    trap   #15

    move.l #80, d0         ; set line thickness to zero
    trap   #15

    move.l  #88, d0        ; draw black rectangle
    move.l #1222, d1        ; starting X coordinate
    move.l #600, d2        ; starting Y coordinate
    move.l #1488, d3        ; ending X coordinate
    move.l #850, d4        ; ending Y coordinate
    trap #15


    
    
    ; Player LEVEL Message
    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$3E0C,     D1          ; Col 02, Row 01
    TRAP    #15                     ; Trap (Perform action)
    MOVE.L  #21, D0
    MOVE.L  #$0000FF00,D1             ; Set green color
    MOVE.L  #$01190001,D2           ; Set bold, 15 point, Fixedsys font
    TRAP    #15                     ; Call Task 21 Text I/O to set font properties
    LEA     LEVEL_MSG,  A1          ; Score Message
    MOVE    #13,        D0          ; No Line feed
    TRAP    #15                     ; Trap (Perform action)

    ; Player LEVEL Value
    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$2809,     D1          ; Col 09, Row 01
    TRAP    #15                     ; Trap (Perform action)
    MOVE.L  #21, D0
    MOVE.L  #$00FFFFFF,D1             ; Set green color
    MOVE.L  #$01220001,D2           ; Set bold, 15 point, Fixedsys font
    TRAP    #15                     ; Call Task 21 Text I/O to set font properties
    MOVE.B  #03,        D0          ; Display number at D1.L
    MOVE.L  PLAYER_LEVEL,D1         ; Move Score to D1.L
    TRAP    #15                     ; Trap (Perform action)

    
*-----------------------------------------------------------
* Fuction       : Draw Goal Guage
* Description   : Draw Distance to next goal Gauge Using circles;draw blue circle

    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$0301,     D1          ; Col 10, Row 1
    TRAP    #15
    
    move.l #81,   d0
    move.l #$000000ff, d1
    trap   #15
        
    move.l  #88, d0
    move.l #450, d1
    move.l #400, d2
    move.l #750, d3
    move.l #700, d4
        
    trap #15
    
    ; inner black circle
    move.l #81,   d0
    move.l #$00000000, d1
    trap   #15
        
    move.l  #88, d0
    move.l #480, d1
    move.l #430, d2
    move.l #720, d3
    move.l #670, d4
        
    trap #15
    
    ; draw black rectangle to form an arc
    move.l #81,   d0
    move.l #$00000000, d1
    trap   #15

    move.l #80, d0         ; set line thickness to zero
    trap   #15

    move.l  #88, d0        ; draw black rectangle
    move.l #462, d1        ; starting X coordinate
    move.l #600, d2        ; starting Y coordinate
    move.l #738, d3        ; ending X coordinate
    move.l #850, d4        ; ending Y coordinate
    trap #15
    
    ; Player GOAL Message
    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$1B0C,     D1          ; Col 02, Row 01
    TRAP    #15                     ; Trap (Perform action)
    MOVE.L  #21, D0
    MOVE.L  #$0000FF00,D1             ; Set green color
    MOVE.L  #$01190001,D2           ; Set bold, 15 point, Fixedsys font
    TRAP    #15                     ; Call Task 21 Text I/O to set font properties
    LEA     GOAL_MSG,  A1          ; Score Message
    MOVE    #13,        D0          ; No Line feed
    TRAP    #15                     ; Trap (Perform action)

    ; Player GOAL Value
    MOVE.B  #TC_CURSR_P,D0          ; Set Cursor Position
    MOVE.W  #$1009,     D1          ; Col 09, Row 01
    TRAP    #15                     ; Trap (Perform action)
    MOVE.L  #21, D0
    MOVE.L  #$00FFFFFF,D1             ; Set green color
    MOVE.L  #$01220001,D2           ; Set bold, 15 point, Fixedsys font
    TRAP    #15                     ; Call Task 21 Text I/O to set font properties
    MOVE.B  #03,        D0          ; Display number at D1.L
    MOVE.L  PLAYER_GOAL,D1         ; Move Score to D1.L
    TRAP    #15                     ; Trap (Perform action)

    
    RTS




























*~Font name~Courier New~
*~Font size~14~
*~Tab type~1~
*~Tab size~4~

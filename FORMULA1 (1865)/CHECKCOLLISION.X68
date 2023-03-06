*-----------------------------------------------------------
* Subroutine    : Collision Check
* Description   : Axis-Aligned Bounding Box Collision Detection
* Algorithm checks for overlap on the 4 sides of the Player and 
* Enemy rectangles
* PLAYER_X <= ENEMY_X + ENEMY_W &&
* PLAYER_X + PLAYER_W >= ENEMY_X &&
* PLAYER_Y <= ENEMY_Y + ENEMY_H &&
* PLAYER_H + PLAYER_Y >= ENEMY_Y
*-----------------------------------------------------------
CHECK_COLLISIONS:
    CLR.L   D1                      ; Clear D1
    CLR.L   D2                      ; Clear D2
    BSR     PLAYER_Y_LTE_TO_ENEMY_Y_PLUS_H
    BSR     PLAYER_Y_LTE_TO_ENEMY_Y_PLUS_H2
    BSR     PLAYER_Y_LTE_TO_ENEMY_Y_PLUS_H4
    BSR     PLAYER_Y_LTE_TO_ENEMY_Y_PLUS_H5
    BSR     PLAYER_Y_LTE_TO_ENEMY_Y_PLUS_H6
    BSR     PLAYER_Y_LTE_TO_ENEMY_Y_PLUS_H7
    BSR     PLAYER_Y_LTE_TO_ENEMY_Y_PLUS_H9
    BSR     PLAYER_Y_LTE_TO_ENEMY_Y_PLUS_H10

                    ;0
PLAYER_Y_LTE_TO_ENEMY_Y_PLUS_H:     
    MOVE.L  PLAYER_Y,   D1          ; Move Player Y to D1
    MOVE.L  ENEMY_Y,    D2          ; Move Enemy Y to D2
    ADD.L   #ENMY_H_INIT,D2          ; Set Enemy Height to D2
    CMP.L   D1,         D2          ; Do they Overlap ?
    BLE     PLAYER_Y_PLUS_H_LTE_TO_ENEMY_Y  ; Less than or Equal
    BRA     COLLISION_CHECK_DONE    ; If not no collision 
PLAYER_Y_PLUS_H_LTE_TO_ENEMY_Y:     ; Less than or Equal ?
    ADD.L   #PLYR_H_INIT,D1          ; Add Player Height to D1
    MOVE.L  ENEMY_Y,    D2          ; Move Enemy Height to D2
    ADD.L   #74,         D2  
    CMP.L   D1,         D2          ; Do they OverLap ?
    BGE     CHECK_PLAYER_POSITION   ; Collision !
    BRA     COLLISION_CHECK_DONE    ; If not no collision

CHECK_PLAYER_POSITION:
    CMP.L   #RIGHT_TRUE, PLAYER_ON_RIGHT
    BEQ     COLLISION
    BRA     COLLISION_CHECK_DONE
    RTS
    
                    ;0
PLAYER_Y_LTE_TO_ENEMY_Y_PLUS_H1:     
    MOVE.L  PLAYER_Y,   D1          ; Move Player Y to D1
    MOVE.L  ENEMY_Y1,    D2          ; Move Enemy Y to D2
    ADD.L   #ENMY_H_INIT,D2          ; Set Enemy Height to D2
    CMP.L   D1,         D2          ; Do they Overlap ?
    BLE     PLAYER_Y_PLUS_H_LTE_TO_ENEMY_Y1  ; Less than or Equal
    BRA     COLLISION_CHECK_DONE    ; If not no collision 
PLAYER_Y_PLUS_H_LTE_TO_ENEMY_Y1:     ; Less than or Equal ?
    ADD.L   #PLYR_H_INIT,D1          ; Add Player Height to D1
    MOVE.L  ENEMY_Y1,    D2          ; Move Enemy Height to D2
    ADD.L   #74,         D2  
    CMP.L   D1,         D2          ; Do they OverLap ?
    BGE     CHECK_PLAYER_POSITION   ; Collision !
    BRA     COLLISION_CHECK_DONE    ; If not no collision

CHECK_PLAYER_POSITION1:
    CMP.L   #RIGHT_TRUE, PLAYER_ON_RIGHT
    BEQ     COLLISION
    BRA     COLLISION_CHECK_DONE
    RTS

    

    
                    ;2
PLAYER_Y_LTE_TO_ENEMY_Y_PLUS_H2:     
    MOVE.L  PLAYER_Y,   D1          ; Move Player Y to D1
    MOVE.L  ENEMY_Y2,    D2          ; Move Enemy Y to D2
    ADD.L   #ENMY_H_INIT,D2          ; Set Enemy Height to D2
    CMP.L   D1,         D2          ; Do they Overlap ?
    BLE     PLAYER_Y_PLUS_H_LTE_TO_ENEMY_Y2  ; Less than or Equal
    BRA     COLLISION_CHECK_DONE    ; If not no collision 
PLAYER_Y_PLUS_H_LTE_TO_ENEMY_Y2:     ; Less than or Equal ?
    ADD.L   #PLYR_H_INIT,D1          ; Add Player Height to D1
    MOVE.L  ENEMY_Y2,    D2          ; Move Enemy Height to D2
    ADD.L   #74,         D2  
    CMP.L   D1,         D2          ; Do they OverLap ?
    BGE     CHECK_PLAYER_POSITION2   ; Collision !
    BRA     COLLISION_CHECK_DONE    ; If not no collision
    
CHECK_PLAYER_POSITION2:
    CMP.L   #CENTER_TRUE, PLAYER_ON_CENTER
    BEQ     COLLISION
    BRA     COLLISION_CHECK_DONE
    RTS
    
     
                    ;4
PLAYER_Y_LTE_TO_ENEMY_Y_PLUS_H4:     
    MOVE.L  PLAYER_Y,   D1          ; Move Player Y to D1
    MOVE.L  ENEMY_Y4,    D2          ; Move Enemy Y to D2
    ADD.L   #ENMY_H_INIT,D2          ; Set Enemy Height to D2
    CMP.L   D1,         D2          ; Do they Overlap ?
    BLE     PLAYER_Y_PLUS_H_LTE_TO_ENEMY_Y4  ; Less than or Equal
    BRA     COLLISION_CHECK_DONE    ; If not no collision 
PLAYER_Y_PLUS_H_LTE_TO_ENEMY_Y4:     ; Less than or Equal ?
    ADD.L   #PLYR_H_INIT,D1          ; Add Player Height to D1
    MOVE.L  ENEMY_Y4,    D2          ; Move Enemy Height to D2
    ADD.L   #74,         D2  
    CMP.L   D1,         D2          ; Do they OverLap ?
    BGE     CHECK_PLAYER_POSITION4   ; Collision !
    BRA     COLLISION_CHECK_DONE    ; If not no collision
    
CHECK_PLAYER_POSITION4:
    CMP.L   #RIGHT_TRUE, PLAYER_ON_RIGHT
    BEQ     COLLISION
    BRA     COLLISION_CHECK_DONE
    RTS
    
                     ;5
PLAYER_Y_LTE_TO_ENEMY_Y_PLUS_H5:     
    MOVE.L  PLAYER_Y,   D1          ; Move Player Y to D1
    MOVE.L  ENEMY_Y5,    D2          ; Move Enemy Y to D2
    ADD.L   #ENMY_H_INIT,D2          ; Set Enemy Height to D2
    CMP.L   D1,         D2          ; Do they Overlap ?
    BLE     PLAYER_Y_PLUS_H_LTE_TO_ENEMY_Y5  ; Less than or Equal
    BRA     COLLISION_CHECK_DONE    ; If not no collision 
PLAYER_Y_PLUS_H_LTE_TO_ENEMY_Y5:     ; Less than or Equal ?
    ADD.L   #PLYR_H_INIT,D1          ; Add Player Height to D1
    MOVE.L  ENEMY_Y5,    D2          ; Move Enemy Height to D2
    ADD.L   #74,         D2  
    CMP.L   D1,         D2          ; Do they OverLap ?
    BGE     CHECK_PLAYER_POSITION5   ; Collision !
    BRA     COLLISION_CHECK_DONE    ; If not no collision

CHECK_PLAYER_POSITION5:
    CMP.L   #CENTER_TRUE, PLAYER_ON_CENTER
    BEQ     COLLISION
    BRA     COLLISION_CHECK_DONE
    RTS
    
    
                    ;6
PLAYER_Y_LTE_TO_ENEMY_Y_PLUS_H6:     
    MOVE.L  PLAYER_Y,   D1          ; Move Player Y to D1
    MOVE.L  ENEMY_Y6,    D2          ; Move Enemy Y to D2
    ADD.L   #ENMY_H_INIT,D2          ; Set Enemy Height to D2
    CMP.L   D1,         D2          ; Do they Overlap ?
    BLE     PLAYER_Y_PLUS_H_LTE_TO_ENEMY_Y5  ; Less than or Equal
    BRA     COLLISION_CHECK_DONE    ; If not no collision 
PLAYER_Y_PLUS_H_LTE_TO_ENEMY_Y6:     ; Less than or Equal ?
    ADD.L   #PLYR_H_INIT,D1          ; Add Player Height to D1
    MOVE.L  ENEMY_Y6,    D2          ; Move Enemy Height to D2
    ADD.L   #74,         D2  
    CMP.L   D1,         D2          ; Do they OverLap ?
    BGE     CHECK_PLAYER_POSITION6   ; Collision !
    BRA     COLLISION_CHECK_DONE    ; If not no collision

CHECK_PLAYER_POSITION6:
    CMP.L   #CENTER_TRUE, PLAYER_ON_CENTER
    BEQ     COLLISION
    BRA     COLLISION_CHECK_DONE
    RTS
    
                    ;7
PLAYER_Y_LTE_TO_ENEMY_Y_PLUS_H7:     
    MOVE.L  PLAYER_Y,   D1          ; Move Player Y to D1
    MOVE.L  ENEMY_Y7,    D2          ; Move Enemy Y to D2
    ADD.L   #ENMY_H_INIT,D2          ; Set Enemy Height to D2
    CMP.L   D1,         D2          ; Do they Overlap ?
    BLE     PLAYER_Y_PLUS_H_LTE_TO_ENEMY_Y7  ; Less than or Equal
    BRA     COLLISION_CHECK_DONE    ; If not no collision 
PLAYER_Y_PLUS_H_LTE_TO_ENEMY_Y7:     ; Less than or Equal ?
    ADD.L   #PLYR_H_INIT,D1          ; Add Player Height to D1
    MOVE.L  ENEMY_Y7,    D2          ; Move Enemy Height to D2
    ADD.L   #74,         D2  
    CMP.L   D1,         D2          ; Do they OverLap ?
    BGE     CHECK_PLAYER_POSITION7   ; Collision !
    BRA     COLLISION_CHECK_DONE    ; If not no collision

CHECK_PLAYER_POSITION7:
    CMP.L   #RIGHT_TRUE, PLAYER_ON_RIGHT
    BEQ     COLLISION
    BRA     COLLISION_CHECK_DONE
    RTS
    
                ;9
PLAYER_Y_LTE_TO_ENEMY_Y_PLUS_H9:     
    MOVE.L  PLAYER_Y,   D1          ; Move Player Y to D1
    MOVE.L  ENEMY_Y9,    D2          ; Move Enemy Y to D2
    ADD.L   #ENMY_H_INIT,D2          ; Set Enemy Height to D2
    CMP.L   D1,         D2          ; Do they Overlap ?
    BLE     PLAYER_Y_PLUS_H_LTE_TO_ENEMY_Y5  ; Less than or Equal
    BRA     COLLISION_CHECK_DONE    ; If not no collision 
PLAYER_Y_PLUS_H_LTE_TO_ENEMY_Y9:     ; Less than or Equal ?
    ADD.L   #PLYR_H_INIT,D1          ; Add Player Height to D1
    MOVE.L  ENEMY_Y9,    D2          ; Move Enemy Height to D2
    ADD.L   #74,         D2  
    CMP.L   D1,         D2          ; Do they OverLap ?
    BGE     CHECK_PLAYER_POSITION9   ; Collision !
    BRA     COLLISION_CHECK_DONE    ; If not no collision

CHECK_PLAYER_POSITION9:
    CMP.L   #CENTER_TRUE, PLAYER_ON_CENTER
    BEQ     COLLISION
    BRA     COLLISION_CHECK_DONE
    RTS
                ;10
PLAYER_Y_LTE_TO_ENEMY_Y_PLUS_H10:     
    MOVE.L  PLAYER_Y,   D1          ; Move Player Y to D1
    MOVE.L  ENEMY_Y10,    D2          ; Move Enemy Y to D2
    ADD.L   #ENMY_H_INIT,D2          ; Set Enemy Height to D2
    CMP.L   D1,         D2          ; Do they Overlap ?
    BLE     PLAYER_Y_PLUS_H_LTE_TO_ENEMY_Y10  ; Less than or Equal
    BRA     COLLISION_CHECK_DONE    ; If not no collision 
PLAYER_Y_PLUS_H_LTE_TO_ENEMY_Y10:     ; Less than or Equal ?
    ADD.L   #PLYR_H_INIT,D1          ; Add Player Height to D1
    MOVE.L  ENEMY_Y10,    D2          ; Move Enemy Height to D2
    ADD.L   #74,         D2  
    CMP.L   D1,         D2          ; Do they OverLap ?
    BGE     CHECK_PLAYER_POSITION10   ; Collision !
    BRA     COLLISION_CHECK_DONE    ; If not no collision

CHECK_PLAYER_POSITION10:
    CMP.L   #RIGHT_TRUE, PLAYER_ON_RIGHT
    BEQ     COLLISION
    BRA     COLLISION_CHECK_DONE
    RTS





COLLISION_CHECK_DONE:               ; No Collision Update points
    RTS                             ; Return to subroutine
    
COLLISION:
    BSR     EXIT                        ; Play Opps Wav
    RTS                             ; Return to subroutine

















*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~

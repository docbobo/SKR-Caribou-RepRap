; =====================================================================================================================
; 0:/sys/stop.g
; =====================================================================================================================
G4                                                                             ; wait

M83                                                                            ; set extruder to relative mode.
M572 D0 S0.0                                                                   ; clear pressure advance.
M220 S100                                                                      ; set the speed factor back to 100% incase it was changed.
M221 S100                                                                      ; set the extrusion factor back to 100% incase it was changed.

M104 S0                                                                        ; turn off temperature
M140 S0                                                                        ; turn off heatbed
M107                                                                           ; turn off fan

G1 X0 Y210 F3000                                                               ; home X axis

M84 XYE                                                                        ; disable motors
;T-1

M150 G255                                                                      ; green light

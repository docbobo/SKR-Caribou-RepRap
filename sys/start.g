; =====================================================================================================================
; 0:/sys/start.g
; =====================================================================================================================
M291 P"Print Started. Preheating and Homing." T10
M150 R255 B255                                                                 ; set lightstrip color to pink
G4 S1

M140 R65                                                                       ; heat bed standby temperature to 65
M144 S0                                                                        ; heat bed to standby
G4 S2
T0                                                                             ; select tool 0

M220 S100                                                                      ; speed factor back to 100% (just in case)
M221 S100                                                                      ; extrusion factor back to 100% (just in case)
M106 S0                                                                        ; part cooling off (just in case)

G10 P0 S160 R160                                                               ; set extruder standby temperature
M290 Z0.26 R0                                                                  ; configure baby steps
M400

M150 B255                                                                      ; set lightstrip color to blue

; start code from slicer will be executed next

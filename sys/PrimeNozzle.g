; =============================================================================-=======================================
; M98 P"0:/sys/PrimeNozzle.g"
; =============================================================================-=======================================
M291 P"Priming Nozzle." T10
G4 S1

G90                                                                            ; absolute positioning
M83                                                                            ; relative extrusion

G1 X0.0 Y-4.0 Z0.3 F6000.0                                                     ; move to front left
M116                                                                           ; wait for temperature

G92 E0.0
G1 E8                                                                          ; purge bubble
G1 X60.0 E9.0 F1000.0                                                          ; intro line
G1 X100.0 E12.5 F1000.0                                                        ; intro line
G92 E0.0

M400
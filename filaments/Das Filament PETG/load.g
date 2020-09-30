; =====================================================================================================================
; Filament Loading
; ================
; Copied from somewhere and adapted to the temperatures
; =====================================================================================================================

M291 P"Please wait while the nozzle is being heated up" R"Loading PETG" T5     ; display message
G10 S240                                                                       ; set current tool temperature to 240C
M116                                                                           ; wait for the temperatures to be reached

M291 P"Feeding filament..." R"Loading PETG" T5                                 ; display new message

M83                                                                            ; extruder to relative mode
G1 E10 F600                                                                    ; feed 10mm of filament at 600mm/min
G1 E470 F3000                                                                  ; feed 470mm of filament at 3000mm/min
G1 E20 F300                                                                    ; feed 20mm of filament at 300mm/min
G4 P1000                                                                       ; wait one second
G1 E-10 F1800                                                                  ; retract 10mm of filament at 1800mm/min

M400                                                                           ; wait for moves to complete
M292                                                                           ; hide the message
G10 S0                                                                         ; turn off the heater again
M84 E0                                                                         ; turn off extruder motor
; =====================================================================================================================
; Filament Unloading
; ==================
; Copied from somewhere and adapted to the temperatures
; =====================================================================================================================

M291 P"Please wait while the nozzle is being heated up" R"Unloading PETG" T5   ; display message
G10 S240                                                                       ; heat up the current tool to 240C

M116                                                                           ; wait for the temperatures to be reached
M291 P"Retracting filament..." R"Unloading PETG" T5                            ; display another message

M83                                                                            ; extruder to relative mode
G1 E-20 F300                                                                   ; retract 20mm of filament at 300mm/min
G1 E-480 F3000                                                                 ; retract 480mm of filament at 3000mm/min

M400                                                                           ; wait for moves to complete
M292                                                                           ; hide the message
G10 S0                                                                         ; turn off the heater again
M84 E0                                                                         ; turn off extruder motor
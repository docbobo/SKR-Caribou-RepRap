; =====================================================================================================================
; Filament Configuration: Das Filament PETG
; =========================================
; 
; Sets up heating process parameters for heatbed and extruder to closely match the desired printing temperatures.
; Also configures pressure advance.
; =====================================================================================================================

M307 H0 A114.3 C404.7 D8.0 S1.00 V0.0 B0                                       ; Heatbed 80°
M307 H1 A390.7 C138.1 D2.8 S1.00 V0.0 B0                                       ; Hotend 240°

M572 D0 S0.07                                                                  ; Pressure Advance
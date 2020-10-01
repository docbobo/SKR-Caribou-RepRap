T0			    ; activate tool
M140 S0 R40     ; sst the bed standby temperature and don't wait for it
G10 P0 R150  	; set the current hot-end standby temperature to 150°C and don't wait for it

M144 S0         ; Set bed heater to standby
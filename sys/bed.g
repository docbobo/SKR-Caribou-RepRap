M671 X-5:255 Y105:105 S1                                  ; leadscrews at left (connected to Z) and right (connected to E1) of X axis

if !move.axes[0].homed || !move.axes[1].homed	; If the printer hasn't been homed, home it
	G28 XY	; home y and x
;
M98 P"0:/sys/homez.g"			; home z
;
M561							; clear any bed transform
;M558 P9 H5 F120 T24000			; increase dive height
M98 P"bed_twoscrews.g"		; perform bed tramming
echo "Bed Traming Cycle: 1 - Difference was " ^ move.calibration.initial.deviation ^ "mm"
;
while move.calibration.initial.deviation >= 0.005		; perform additional tramming if previous deviation was over 0.01mm
  if iterations = 5
    abort "Too many auto tramming attempts"
  M98 P"bed_twoscrews.g"		; perform bed tramming
  echo "Bed Traming Cycle: " ^ iterations + 2 ^ " - Difference was " ^ move.calibration.initial.deviation ^ "mm"
  continue
;
G28 Z							; home z
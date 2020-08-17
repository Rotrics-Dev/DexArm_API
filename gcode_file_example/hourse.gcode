G0 Z10 F4000
;TOOL_PATH_RENDER_METHOD_LINE
;----- Start Gcode Begin -----
M2000;Custom cmd: line-mode
M888 P0;Custom cmd: header is write&draw
;----- Start Gcode Over -----
G0 F4000
G1 F4000
G0 X-25 Y-25
G1 Z0.00
G1 X25 Y-25
G1 X25 Y25
G1 X0 Y50
G1 X-25 Y25
G1 X-25 Y-25
G1 X25 Y25
G1 X-25 Y25
G1 X25 Y-25
G0 Z10



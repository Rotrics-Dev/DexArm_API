# M204 - Set Starting Acceleration

# Description
Set the preferred starting acceleration for moves of different types.

# Notes
  - View the current setting with [`M503`](/docs/gcode/M503.html).
  - If `EEPROM_SETTINGS` is enabled, these are saved with [`M500`](/docs/gcode/M500.html), loaded with [`M501`](/docs/gcode/M501.html), and reset with [`M502`](/docs/gcode/M502.html).
  - Legacy `M204 S<accel>` is deprecated. Use separate paremeters `M204 P<accel> T<accel>` instead.

# Usage
`M204` `[P<accel>]` `[R<accel>]` `[S<accel>]` `[T<accel>]`

## Parameters
- `[P<accel>]` Printing acceleration. Used for moves that include extrusion (i.e., which employ the current tool).
- `[R<accel>]` Retract acceleration. Used for extruder retraction moves.
- `[S<accel>]` Legacy parameter for move acceleration. Set both printing and travel acceleration.
- `[T<accel>]` Travel acceleration. Used for moves that include no extrusion.
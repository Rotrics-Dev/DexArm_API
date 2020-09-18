# M203 - Set Max Feedrate

# Description
Set the max feedrate for one or more axes (in current units-per-second).

# Notes
  - View the current setting with [`M503`](/docs/gcode/M503.html).
  - If `EEPROM_SETTINGS` is enabled, these are saved with [`M500`](/docs/gcode/M500.html), loaded with [`M501`](/docs/gcode/M501.html), and reset with [`M502`](/docs/gcode/M502.html).

# Usage
`M203` `[E<units/s>]` `[T<index>]` `[X<units/s>]` `[Y<units/s>]` `[Z<units/s>]`

## Parameters
- `[E<units/s>]` E axis max feedrate
- `[T<index>]` Target extruder (Requires DISTINCT_E_FACTORS)
- `[X<units/s>]` X axis max feedrate
- `[Y<units/s>]` Y axis max feedrate
- `[Z<units/s>]` Z axis max feedrate

# Examples
Set max feedrate for XY to 100mm/s:
```
M203 X100 Y100
```
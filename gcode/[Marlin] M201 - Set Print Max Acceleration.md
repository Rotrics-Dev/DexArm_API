# M201 - Set Print Max Acceleration

# Description
Set the max acceleration for one or more axes (in current units-per-second squared).

# Notes
  - View the current setting with [`M503`](/docs/gcode/M503.html).
  - If `EEPROM_SETTINGS` is enabled, these are saved with [`M500`](/docs/gcode/M500.html), loaded with [`M501`](/docs/gcode/M501.html), and reset with [`M502`](/docs/gcode/M502.html).

# Usage
`M201` `[E<accel>]` `[T<index>]` `[X<accel>]` `[Y<accel>]` `[Z<accel>]`
## Parameters
- `[E<accel>]` E axis max acceleration
- `[T<index>]` Target extruder (Requires DISTINCT_E_FACTORS)
- `[X<accel>]` X axis max acceleration
- `[Y<accel>]` Y axis max acceleration
- `[Z<accel>]` Z axis max acceleration

# Examples
Set max acceleration lower so it sounds like a robot:
```
M201 X50 Y50
```
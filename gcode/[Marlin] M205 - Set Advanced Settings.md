# M205 - Set Advanced Settings

# Description
Set various motion settings. See parameters for details.

# Notes
  - View the current setting with [`M503`](/docs/gcode/M503.html).
  - If `EEPROM_SETTINGS` is enabled, these are saved with [`M500`](/docs/gcode/M500.html), loaded with [`M501`](/docs/gcode/M501.html), and reset with [`M502`](/docs/gcode/M502.html).

# Usage
`M205` `[B<µs>]` `[E<jerk>]` `[J<deviation>]` `[S<units/s>]` `[T<units/s>]` `[X<jerk>]` `[Y<jerk>]` `[Z<jerk>]`
## Parameters
- `[B<µs>]` Minimum segment time (µs)
- `[E<jerk>]` E max jerk (units/s)
- `[J<deviation>]` Junction deviation (requires JUNCTION_DEVIATION)
- `[S<units/s>]` Minimum feedrate for print moves (units/s)
- `[T<units/s>]` Minimum feedrate for travel moves (units/s)
- `[X<jerk>]` X max jerk (units/s)
- `[Y<jerk>]` Y max jerk (units/s)
- `[Z<jerk>]` Z max jerk (units/s)

# Examples
Set some advanced settings.
```
M205 T40 ; Travel feedrate = 40mm/s
```
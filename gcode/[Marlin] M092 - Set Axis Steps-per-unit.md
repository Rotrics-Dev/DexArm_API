
# M92 - Set Axis Steps-per-unit

# Description
Use [`M92`](/docs/gcode/M092.html) to set the steps-per-unit for one or more axes. This setting affects how many steps will be done for each unit of movement. Units will be in steps/mm unless *inch* mode is set with [`G20`](/docs/gcode/G020.html) (which requires `INCH_MODE_SUPPORT`).

# Notes
  - |Get the current steps-per-unit settings with [`M503`](/docs/gcode/M503.html).

    With `EEPROM_SETTINGS` enabled:

  - This setting for all axes is saved with [`M500`](/docs/gcode/M500.html) and loaded with [`M501`](/docs/gcode/M501.html).
  - [`M502`](/docs/gcode/M502.html) resets steps-per-unit for all axes to the values from `DEFAULT_AXIS_STEPS_PER_UNIT`.

# Usage
`M92` `[E<steps>]` `[T<index>]` `[X<steps>]` `[Y<steps>]` `[Z<steps>]`
## Parameters
- `[E<steps>]` E steps per unit
- `[T<index>]` Target extruder (Requires DISTINCT_E_FACTORS)
- `[X<steps>]` X steps per unit
- `[Y<steps>]` Y steps per unit
- `[Z<steps>]` Z steps per unit

# Examples
Set E steps for a new extruder
```
M92 E688.4 
```
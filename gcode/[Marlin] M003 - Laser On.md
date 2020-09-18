# M3 - Laser On

# Description
Wait for moves to complete, then set the spindle speed (clockwise) or laser power.

# Notes
  - 'S is interpeted as the configured value range: PWM (default), Percentage, or RPM. (See `CUTTER_POWER_UNIT`)'
  - "[`M3`](/docs/gcode/M003.html) and [`M4`](/docs/gcode/M004.html) aren't needed with `LASER_POWER_INLINE` and `LASER_MOVE_POWER` enabled. Power is set directly in [`G1`](/docs/gcode/G000-G001.html)…[`G5`](/docs/gcode/G005.html)"

# Usage
`M3` `[I<mode>]`
## Parameters
- `[I<mode>]` Inline mode ON / OFF.

# Examples
Set spindle rotation clockwise at 50% with `CUTTER_POWER_UNIT` set to `PERCENT`
```
M3 S50
```

Set spindle rotation clockwise at 6K RPM with `CUTTER_POWER_UNIT` set to `RPM`
```
M3 S5000
```

Set laser power to 50% in PWM
```
M3 O128
```

Turn on the laser at full / `SPEED_POWER_STARTUP` power
```
M3
```

Fire laser at 80% on next G1,G2 and G3 move
```
M3 S204 I
```
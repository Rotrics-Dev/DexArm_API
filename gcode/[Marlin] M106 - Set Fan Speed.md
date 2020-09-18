# M106 - Set Fan Speed

# Description
Turn on one of the fans and set its speed. If no fan index is given, the print cooling fan is selected. The fan speed applies to the next block added to the planner, so it will not take effect until previous moves in the planner are done. Under manual control with an idle machine, [`M106`](/docs/gcode/M106.html) will change the fan speed immediately.

# Notes
  - '[`M106`](/docs/gcode/M106.html) with no speed sets the fan to full speed.'
  - Turn off fans with [`M107`](/docs/gcode/M107.html).

# Usage
`M106` `[I<index>]` `[P<index>]` `[S<speed>]` `[T<secondary>]`
## Parameters
- `[I<index>]` Material preset index. Overrides S.
- `[P<index>]` Fan index
- `[S<speed>]` Speed, from 0 to 255. S255 provides 100% duty cycle; S128 produces 50%.
- `[T<secondary>]` Secondary speed. Added in Marlin 1.1.7. (Requires `EXTRA_FAN_SPEED`)

      - `M106 P<fan> T3-255` sets a secondary speed for `<fan>`.
      - `M106 P<fan> T2` uses the set secondary speed.
      - `M106 P<fan> T1` restores the previous fan speed.

# Examples
Turn on the fan at 200/255 DC
```
M106 S200
```

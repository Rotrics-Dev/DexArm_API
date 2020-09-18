# M104 - Set Hotend Temperature

# Description
Set a new target hot end temperature and continue without waiting. The firmware will continue to try to reach and hold the temperature in the background.

Use [`M109`](/docs/gcode/M109.html) to wait for the hot end to reach the target temperature.

# Notes
  - With `PRINTJOB_TIMER_AUTOSTART` this command will stop the print job timer if the temperature is set at or below half of `EXTRUDE_MINTEMP`.

# Usage
`M104` `[B<temp>]` `[F<flag>]` `[I<index>]` `[S<temp>]` `[T<index>]`
## Parameters
- `[B<temp>]` `AUTOTEMP`: The max auto-temperature.
- `[F<flag>]` `AUTOTEMP`: Autotemp flag. Omit to disable autotemp.
- `[I<index>]` Material preset index. Overrides `S`.
- `[S<temp>]` Target temperature. `AUTOTEMP`: the min auto-temperature.
- `[T<index>]` Hotend index. If omitted, the currently active hotend will be used.

# Examples
Set target temperature for the active hotend
```
M104 S185
```
Set target temperature for E1
```
M104 T1 S205
```
`AUTOTEMP`: Set autotemp range
```
M104 F S180 B190
```
`AUTOTEMP`: Disable autotemp
```
M104
```
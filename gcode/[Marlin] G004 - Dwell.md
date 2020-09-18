# G4 - Dwell

# Description
Dwell pauses the command queue and waits for a period of time.

# Notes
- If both `S` and `P` are included, `S` takes precedence.
- '[`M0`](/docs/gcode/M000-M001.html)/[`M1`](/docs/gcode/M000-M001.html) provides an interruptible "dwell" (Marlin 1.1.0 and up).'
- '[`G4`](/docs/gcode/G004.html) with no arguments is effectively the same as [`M400`](/docs/gcode/M400.html).'

# Usage
`G4` `[P<time in ms>]` `[S<time in sec>]`

## Parameters
- `[P<time in ms>]` Amount of time to dwell
- `[S<time in sec>]` Amount of time to dwell

# Examples
```
G4 P500 ; Dwell for 1/2 second
```
# G92 - Set Position

# Description
Set the current position to the values specified. In Marlin 1.1.0 and up, the software endstops are adjusted to preserve the physical movement limits. Thus you could use [`G92`](/docs/gcode/G092.html) to set the middle of the bed to 0,0 and then run .gcode that was sliced for a Deltabot.

The [`CNC_COORDINATE_SYSTEMS`](/docs/gcode/G054-G059.html) option enables use of `G92.1` to reset the selected workspace to native machine space. See [`G54-G59`](/docs/gcode/G054-G059.html) and [`G53'](/docs/gcode/G053.html).

# Notes
  - In earlier versions of Marlin [`G92`](/docs/gcode/G092.html) doesn't update the software endstops, so it was unsupported to set coordinates outside these boundaries. In Marlin 1.1.0 and up, the physical boundaries are maintained. This means you can no longer use [`G92`](/docs/gcode/G092.html) to move below the bed, for example.

# Usage
`G92` `[E<pos>]` `[X<pos>]` `[Y<pos>]` `[Z<pos>]`
## Parameters
- `[E<pos>]` New extruder position
- `[X<pos>]` New X axis position
- `[Y<pos>]` New Y axis position
- `[Z<pos>]` New Z axis position

# Examples
Specify that the nozzle's current X position is 10 and the current extruder position is 90.
```
G92 X10 E90
```
Specify that the nozzle's current XYZ position is 0, 0, 0.
```
G92 X0 Y0 Z0
```
Resets selected workspace is 0, 0, 0.
```
G92.1
```
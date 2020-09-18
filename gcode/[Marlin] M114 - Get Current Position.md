# M114 - Get Current Position

# Description
Get the current position of the active nozzle. Includes stepper values.

If `M114_DETAIL` is enabled the `D` parameter will provide more details such as leveling information and kinematics.

# Notes
  - Hosts should respond to the output of [`M114`](/docs/gcode/M114.html) by updating their current position.

# Usage
`M114` `[D<|>]`
## Parameters
- `[D<|>]` Detailed information (requires `M114_DETAIL`)

# Examples
Get the current position
```
M114
```

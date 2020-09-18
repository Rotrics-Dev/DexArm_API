
# M5 - Laser Off

# Description
Wait for moves to complete, then turn off the spindle / laser power and PWM.

# Notes
  - 'With `LASER_MOVE_G0_OFF` and `LASER_MOVER_G28_OFF` enabled, [`G0`](/docs/gcode/G000-G001.html) and [`G28`](/docs/gcode/G028.html) will also turn the laser off'

# Usage
`M5`

# Examples
pre: Turn off the spindle or laser
```
M5
```
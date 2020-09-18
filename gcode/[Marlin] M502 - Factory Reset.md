# M502 - Factory Reset

# Description
Reset all configurable settings to their factory defaults.

To also reset settings in EEPROM, follow with [`M500`](/docs/gcode/M500.html).

# Notes:
  - Requires `EEPROM_SETTINGS`.
  - Since Marlin 1.1.0 only changed bytes are written to prolong EEPROM life.
# Usage
`M500`

# Examples
Reset settings and save them to EEPROM
```
M502 ; reset!
M500 ; saved!!
```
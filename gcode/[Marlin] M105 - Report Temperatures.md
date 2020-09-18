# M105 - Report Temperatures

# Description
Request a temperature report to be sent to the host at some point in the future.

# Notes
  - Some hosts may hide the reply from [`M105`](/docs/gcode/M105.html).
  - A better way for hosts to get regular temperature updates is to use [`M155`](/docs/gcode/M155.html) (requires `AUTO_REPORT_TEMPERATURES` and `EXTENDED_CAPABILITIES_REPORT`). Hosts then no longer need to run an extra process or use up slots in the command buffer to receive temperatures.

# Usage
`M105` `[T<index>]`
## Parameters
- `[T<index>]` Hotend index

# Examples
Get a temperature report
```
M105
```

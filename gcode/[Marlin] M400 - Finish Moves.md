# M400 - Finish Moves

# Description
This command causes all GCode processing to pause and wait in a loop until all moves in the planner are completed.

# Usage
`M400`

# Examples
Wait for moves to finish before turning off the spindle
```
M400
M5    ; Without M400 this happens too soon
```
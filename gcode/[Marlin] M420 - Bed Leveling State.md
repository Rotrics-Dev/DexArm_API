# M420 - Bed Leveling State(Manual)

# Description
Get and/or set bed leveling state. For mesh-based leveling systems use `Z` parameter to set the Z Fade Height.

# Notes
- The "current position" may change in response to `M420 Sn`.

# Usage
`M420` `[S<bool>]` `[V<bool>]` `[Z<linear>]`

## Parameters
- `[S<bool>]` Set enabled or disabled. A valid mesh is required to enable bed leveling. If the mesh is invalid / incomplete leveling will not be enabled.
- `[V<bool>]` Verbose: Print the stored mesh / matrix data
- `[Z<linear>]` Set Z fade height (Requires ENABLE_LEVELING_FADE_HEIGHT)
  - With Fade enabled, bed leveling correction is gradually reduced as the nozzle gets closer to the Fade height. Above the Fade height no bed leveling compensation is applied at all, so movement is machine true.
  - Set to 0 to disable fade, and leveling compensation will be fully applied to all layers of the print.

# Examples
Enable bed leveling:
```
M420 S1
```
Disable bed leveling:
```
M420 S0
```
Print the stored mesh / matrix data
```
M420 V
```

# M200 - Set Filament Diameter

# Description
Set the filament's current diameter and enable volumetric extrusion.

In volumetric extrusion mode the E axis specifies cubic mm instead of linear mm, and the firmware calculates how much length to extrude for the given volume based on the filament diameter.

# Usage
`M200` `[D<diameter>]` `[T<index>]`
## Parameters
- `[D<|>]` Detailed information (requires `M114_DETAIL`)

# Examples
A common diameter close to 3mm:
```
M200 D2.85
```
Turn off volumetric extrusion
```
M200 D0
M200 D  ; also works
```
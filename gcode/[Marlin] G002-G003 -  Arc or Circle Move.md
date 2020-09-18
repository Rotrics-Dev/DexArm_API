# G2-G3 - Arc or Circle Move

# Description
`G2` adds a clockwise arc move to the planner; `G3` adds a counter-clockwise arc. An arc move starts at the current position and ends at the given XYZ, pivoting around a center-point offset given by `I` and `J` or `R`.

[`CNC_WORKSPACE_PLANES`](/docs/gcode/G017-G019.html) allows `G2/G3` to operate in the selected XY, ZX, or YZ workspace plane.

This command has two forms:
#### I J Form

 - `I` specifies an X offset. `J` specifies a Y offset.
 - At least one of the `I` `J` parameters is required.
 - `X` and `Y` can be omitted to do a complete circle.
 - The given `X` `Y` is not error-checked.
   The arc ends based on the angle of the destination.
 - Mixing `I` or `J` with `R` will throw an error.

#### R Form
 - `R` specifies the radius. `X` or `Y` is required.
 - Omitting both `X` and `Y` will throw an error.
 - `X` or `Y` must differ from the current XY position.
 - Mixing `R` with `I` or `J` will throw an error.

Arc moves actually generate several short straight-line moves, the length of which are determined by the configuration option `MM_PER_ARC_SEGMENT` (default 1mm). Any change in the Z position is linearly interpolated over the whole arc.

'ARC_P_CIRCLES' enables the use of the 'P' parameter to specify complete circles

# Usage
`G2` `[E<pos>]` `I<offset>` `J<offset>` `[P<rate>]` `R<radius>` `[X<pos>]` `[Y<pos>]` `[Z<pos>]`
## Parameters
- `[E<pos>]` The amount to extrude between the start point and end point
- `I<offset>` An offset from the current X position to use as the arc center
- `J<offset>` An offset from the current Y position to use as the arc center
- `[P<rate>]` Specify complete circles - requires `ARC_P_CIRCLES`
- `R<radius>` A radius from the current XY position to use as the arc center
- `[X<pos>]` A coordinate on the X axis
- `[Y<pos>]` A coordinate on the Y axis
- `[Z<pos>]` A coordinate on the Z axis

# Gallery
## G3 command geometry
This illustrates a counter clockwise arc, starting at [9, 6]. It can be generated either by `G3 X2 Y7 I-4 J-3` or `G3 X2 Y7 R5`

![avatar](https://marlinfw.org/assets/images/gcode/G3fig.png)

# examples:
Move in a clockwise arc from the current position to [125, 32] with the center offset from the current position by (10.5, 10.5).
```
G2 X125 Y32 I10.5 J10.5
```
Move in a counter-clockwise arc from the current position to [125, 32] with the center offset from the current position by (10.5, 10.5).
```
G3 X125 Y32 I10.5 J10.5
```
Move in a complete clockwise circle with the center offset from the current position by [20, 20].
```
code: G2 I20 J20
```
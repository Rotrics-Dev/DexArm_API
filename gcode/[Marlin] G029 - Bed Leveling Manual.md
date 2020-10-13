# G029 - Bed Leveling (Manual)

# Description
Mesh Bed Leveling (MBL) allows interactively measuring a Z height mesh without a bed probe. The only tool required is a piece of paper or a feeler gauge. MBL uses the mesh to compensate for variations in height across the bed.

1. Use `G29 S0` to get the current status and mesh. If there’s an existing mesh, you can send M420 S1 to use it.
2. Use `G29 S1` to move to the first point for Z adjustment.
3. Adjust Z so a piece of paper can just pass under the nozzle.
4. Use `G29 S2` to save the Z value and move to the next point.
5. Repeat steps 3-4 until completed.
6. Use [`M500`](/docs/gcode/M500.html) to save the mesh to EEPROM, if desired.

# Notes
- Requires the `MESH_BED_LEVELING` option in `Configuration.h`.
- "[`G28`](/docs/gcode/G028.html) disables bed leveling. Follow with `M420 S` to turn leveling on, or use `RESTORE_LEVELING_AFTER_G28` to automatically keep leveling on after [`G28`](/docs/gcode/G028.html)."


# Usage
`G29` `[I<index>]` `[J<index>]` `S<0|1|2|3|4|5>` `[X<count>]` `[Y<count>]` `[Z<linear>]`
## Parameters
- `[I<index>]` With S3, the (0…n-1) X index of the mesh value to modify.
- `[J<index>]` With S3, the (0…n-1) Y index of the mesh value to modify.
- `[S<0|1|2|3|4|5>]`
  - S0: Produce a mesh report (see examples below).
  - S1: Start probing mesh points.
  - S2: Probe the next mesh point.
  - S3: Manually modify a single point with X Y Z parameters. (See also M421.)
  - S4: Set a global Z offset. Positive values are away from the bed; negative values are closer.
  - S5: Reset and disable mesh.

# Examples
S0 mesh report:
```
> G29 S0
Num X,Y: 3,3
Z offset: 0
Measured points:
       0      1       2
0 +0.011 -0.020  -0.026
1 +0.017 +0.002  -0.019
2 +0.022 -0.030  -0.013
```
Modify some mesh points and view the new mesh:
```
> G29 S3 I2 J2 Z0.042
> G29 S3 I1 J1 Z-0.666
> G29 S0
3x3 mesh. Z offset: 0
Measured points:
       0      1       2
0 +0.011 -0.020  -0.026
1 +0.017 -0.666  -0.019
2 +0.022 -0.030  +0.042
```
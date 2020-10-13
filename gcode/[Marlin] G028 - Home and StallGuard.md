# Description
  DexArm supported TMC2209 StallGuard.
  
# Notes
  ![avatar](DexArm's_Coordinate_System.png)
  Because of the particularity of dexarm, We have made some customization to the G28.
  - `G28` Go to X0 Y300 Z0. Similar to M1112. Based on the position sensor of 3 Axiss.
  - `G28 C` or `G28 Z` Home C Axis to the machine home position. Based on the stallguard of TMC2209.
  - `G28 B` or `G28 Y` Home B Axis to the machine home position. Based on the stallguard of TMC2209.
  - `G28 A` or `G28 X` Home A Axis to the machine home position. Based on the stallguard of TMC2209.
  - Home C/Z before Home AB/XY.

# Examples
Modify some mesh points and view the new mesh:
```
> G28
> G28 C
> G28 B
> G28 A
```
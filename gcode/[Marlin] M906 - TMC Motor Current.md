# M906 - TMC Motor Current

# Description
Set the current for a stepper motor in milliamps units.

# Notes
  - Requires one or more TMC stepper drivers.

# Usage
`M906` `[E<mA>]` `[I<index>]` `[T<index>]` `[X<mA>]` `[Y<mA>]` `[Z<mA>]`
## Parameters
- `[E<mA>]` Current for the E0 stepper
- `[I<index>]` (>=1.1.9) Index for dual steppers. Use I1 for X2, Y2, and/or Z2.
- `[T<index>]` (>=1.1.9) Index (tool) number for the E axis. If not specified, the E0 extruder.
- `[X<mA>]` Current for the X stepper
- `[Y<mA>]` Current for the Y stepper
- `[Z<mA>]` Current for the Z stepper

# Examples
Set the XYZ motor currents to 200mA
```
M906 X200 Y200 Z200 
```
Set the E1 motor current to 10mA
```
M906 T1 E10
```
Set the X2 motor current to 5mA
```
M906 I1 X5
```
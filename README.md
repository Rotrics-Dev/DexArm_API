## Introduction

DexArm is developed based on the world's leading open source project **Marlin**, the DexArm firmware is completely open source, and its control commands (G-code) are compatible with Marlin.

G-code commands are the general control commands for CNC machines, 3D printers, etc. It is composed of ASCII strings, such as `G1 F2000 X0 Y300 Z0`, G-code commands usually uses `\n` as the sending end character.

In Marlin, the device will reply `ok` after receiving the G-code commands, the host computer then can send the next commands after receiving the `ok`. In DexArm SDK (pydexarm, etc.), we have encapsulated this sending and receiving mechanism and make it convenient for users to use.


## Install dependency

```
pip install pyserial
```

## Initialization

After the host computer is connected to the robot arm, please send the `GoHOME` command at first to move the arm to the HOME (`X0 Y300 Z0`) position. 

## Run the example

Change the port in pydexarm/example.py properly and run:

```
python pydexarm/example.py
```

## Communication Parameters

- Baud rate: 115200
- Data bits: 8
- Stop bits: 1
- Parity: None
- Flow control: None

## Front-end modules

Different front-end modules have different offset values. You need to set the actual front-end module through command `M888 Pn`. After that, the parameters will be saved in the firmware, and when you re-start the arm next time, it will load the saved front-end module parameters automatically.

- Pen holder module: `M888 P0`
- Laser engraving module: `M888 P1`
- Pneumatic module: `M888 P2`
- 3D printing module: `M888 P3`

## Re-calibrate the initial position

The DexArm HOME position and motion coordinates are based on the initial position. The initial position has been calibrated before leaving the factory. If there is any error in the arm movement, please re-calibrate the initial position according to the following instruction:

1. Adjust the arm to the following position, make sure Axis 1 and Axis 2 is in the maximum position:

2. Send command `M889`

## Motion commands

Please refer to this section for the details. 

## Stop Commands

Related command `G4`

## Pneumatic module control commands

- M1000(0D0A) - air pump box to pump in
- M1001(0D0A) - air pump box to pump out
- M1002(0D0A) - air pump box to release air
  - To return to original status when the suction cup/soft gripper is not working.
- M1003(0D0A) - stop air pump box

Attention: the commands for the soft gripper and the suction cup is opposite. When air pump box pump in, suction cup will pick the item while the soft gripper will release the item. When air pump box pump out, suction cup will release the item while the soft gripper will grab the item. 

## Laser module control commands

- M3 - initiate laser, set duty cycle. Parameters:
- S - duty cycle, arrange 0-255
- M5 - stop laser

Sample: engrave under the maxium power
```
M3 S255
```
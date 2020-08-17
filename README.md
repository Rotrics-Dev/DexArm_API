# 概述
DexArm基于全球领先的开源项目Marlin定制开发，固件完全开源，控制指令(Gcode)兼容Marlin。

Gcode指令是数控机床、3D打印机等设置通用控制指令，由ASCII字符串组成，如`G1 F2000 X0 Y300 Z0`，Gcode指令通常以`\n`作为发送结束符。

在Marlin中，下位机收到Gcode指令后，会回复`ok`。上位机收到`ok`后方可发送下一条指令。在DexArm的SDK(pydexarm等)中我们将此收发机制做了封装，方便用户调用。

# 通信格式
- Baud rate: 115200
- Data bits: 8
- Stop bits: 1
- Parity: None
- Flow control: None

# 开机初始化
上位机连接机械臂后， 首先需要发送 `GoHOME`指令，让机械臂进入HOME(`X0 Y300 Z0`)位置。

# 前端模块选择
DexArm不同的前端模块偏置尺寸不同，需要通过`M888 Pn`设置实际使用的前端模块，设置成功后会保存在固件中，下次启动自动加载保存的前端模块。
- 笔模块：`M888 P0`
- 激光模块：`M888 P1`
- 气泵模块：`M888 P2`
- 3D打印模块：`M888 P3`

# 重新校准初始位置
DexArm的HOME位置，运动坐标均由初始位置解算而来。DexArm出厂前已校正初始位置

如果发现DexArm运动出现错误，需重新校准初始位置。

## 校准方法:
- 将机械臂摆到最大配置(图)
- 发送`M889`

# 运动指令
参考运动控制章节

相关指令`G0_G1` `G2_G3` `M201` `M202` `M203` `M204`(链接)

# 暂停指令
相关指令`G4`

# 气泵指令
- 气泵吸气\柔性爪抓取 `M1000`
- 气泵吹气\柔性爪张开 `M1001`
- 气泵放气\柔性爪自然状态（泄气气阀打开） `M1002`
- 所有气泵气阀停止工作 `M1003`
- 当气泵长时间不工作时，请发送`M1003`，停止所有气泵气阀

# 激光指令
相关指令`M3` `M5`(链接)

# 3D打印指令
参考3D打印章节

相关指令`M105` `M108` `M106` `M107` `M109`(链接)

# [DexArm在线使用手册](https://manual.rotrics.com/)

# [DexArm API&SDK](https://manual.rotrics.com/gcode/api-and-sdk)

# [Marlin官方Gcode说明](https://marlinfw.org/meta/gcode/)
from pydexarm import Dexarm

'''windows'''
dexarm = Dexarm("COM67")
'''mac & linux'''
#device = Dexarm("/dev/tty.usbmodem3086337A34381")

dexarm.go_home()

dexarm.move_to(50, 300, 0)
dexarm.move_to(50, 300, -50)
dexarm.air_picker_pick()
dexarm.move_to(50, 300, 0)
dexarm.move_to(-50, 300, 0)
dexarm.move_to(-50, 300, -50)
dexarm.air_picker_place()

dexarm.go_home()
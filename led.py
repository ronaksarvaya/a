
#rasb pi -> led module
#pin 7 = led 1
#pin 11 = led 2
#pin 13 = led 3
#pin 15 = led 4
#pin 6 = GND



import RPi.GPIO as GP
import time
GP.setmode(GP.BOARD)
GP.setup(7, GP.OUT)
GP.setup(11, GP.OUT)
GP.setup(13, GP.OUT)
GP.setup(15, GP.OUT)

while(1):
    GP.output(7, GP.HIGH)
    time.sleep(0.2)
    GP.output(11, GP.HIGH)
    time.sleep(0.2)
    GP.output(13, GP.HIGH)
    time.sleep(0.2)
    GP.output(15, GP.LOW)
    time.sleep(0.2)
    print("LED is on")
    GP.cleanup()

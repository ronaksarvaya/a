
#  TXofCardReader -> RXofTTL
#  GNDofCardReader -> GND of TTL
# Red of Power Supply ->  VCC of CardReader
# Black of Power Supply ->GNDofCardReader
#  USB to TTLconvertor ->  Raspberry Pi

import RPi.GPIO as GP
import time
import serial

GP.setmode(GP.BOARD)

def read_rfid():
    ser = serial.Serial("/dev/ttyUSB0")
    ser.baudrate = 9600
    data = ser.read(12)
    ser.close()
    return data

try:
    while True:
        id = read_rfid()
        print(id)
        if id == "123456789012":  # replace with actual RFID tag value
            print("Access Granted")
            time.sleep(2)
        else:
            print("Access Denied")
            time.sleep(2)
except KeyboardInterrupt:
    print("Program stopped by user")
finally:
    GP.cleanup()

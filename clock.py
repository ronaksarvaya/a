# rasb pi -> clock
# pin 16  -> clock of timer
# pin 18  -> DIO of timer
# pin 4 -> vcc of timer
# pin 6 gnd -> gnd of timer

import sys
import time
import datetime
import RPi.GPIO as GP
import tm1637

Display = tm1637.TM1637(23, 24, tm1637.BRIGHT_TYPICAL)
Display.Clear()
Display.SetBrightnes(1)

while(True):
    now = datetime.datetime.now()
    hour = now.hour
    minute = now.minute
    second = now.second
    currentime = [int(hour / 10), hour % 10, int(minute / 10), minute % 10]
    Display.Show(currentime)
    Display.ShowDoublepoint(second % 2)
    time.sleep(1)

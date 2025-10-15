
# gpio pin 6  -> gnd led module

# gpio pin 3 -> led 1

# connect to internet also


import time
import datetime
import RPi.GPIO as GP
import telepot
import sys

def on(pin):
    GP.output(pin, GP.HIGH)
    return "LED ON"

def off(pin):
    GP.output(pin, GP.LOW)
    return "LED OFF"

GP.setmode(GP.BOARD)
GP.setwarnings(False)
GP.setup(3, GP.OUT)

def handle(msg):
    chat_id = msg['chat']['id']
    command = msg['text']
    print(f"Got command: {command}")

    if command == '/on':
        bot.sendMessage(chat_id, on(3))
    elif command == '/off':
        bot.sendMessage(chat_id, off(3))
    else:
        bot.sendMessage(chat_id, "Invalid command! Use /on or /off")

bot = telepot.Bot('YOUR_BOT_TOKEN')  
bot.message_loop(handle)

print("I am Listening...")

while True:
        time.sleep(5)
    

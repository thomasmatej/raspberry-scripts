
import time
import os
import RPi.GPIO as GPIO


os.system("/home/pi/rcswitch-pi/send 11111 1 1")
#GPIO.setmode(GPIO.BCM)
#GPIO.setwarnings(False)
#GPIO.setup(14, GPIO.OUT)
#GPIO.output(14, True)
time.sleep(5.0)
#GPIO.output(14, False)
os.system("/home/pi/rcswitch-pi/send 11111 1 0")


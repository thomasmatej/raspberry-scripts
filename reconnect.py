
import time
import os
while True:
	os.system('sudo ifdown wlan0')
	os.system('sudo ifup wlan0')
	time.sleep(600)


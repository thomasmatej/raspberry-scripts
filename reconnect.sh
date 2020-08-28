#!/bin/bash

ping -c4 192.168.178.1 > /dev/null

if [ $? != 0 ]
then
	#logger -t $0 "WiFi down, restarting"
	ifdown --force wlan0
	ifup wlan0
fi



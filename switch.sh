#!/bin/bash

DAEMON=/usr/bin/python
ARGS="/opt/switch/switch.py"
PIDFILE=/var/run/switch.pid

case "$1" in
	start)
		echo "Starting server <switch>"
		/sbin/start-stop-daemon --start --pidfile $PIDFILE \
			--user root --group root -b --make-pidfile \
			--chuid root --exec $DAEMON $ARGS
		;;
	stop)
		echo "Stopping server <switch>"
		/sbin/start-stop-daemon --stop --pidfile $PIDFILE --verbose
		;;
	*)
		echo "Usage: /etc/init.d/switch {start|stop}"
		exit 1
	;;
esac

exit 0

#!/bin/sh
echo "17" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio17/direction
timestamp() {
date +"%Y-%m-%d %T"
}
# crontab -e
#* * * * * /home/pi/fan/./fan.sh
#

LOGDIR="/home/pi/fan/fan.log"
VALUE=60
TEMP=`vcgencmd measure_temp | cut -c6,7`
STATUS=`cat /sys/class/gpio/gpio17/value`
#echo `timestamp` " Info: Temperature: $TEMP">>$LOGDIR
#echo `timestamp` " Info: Temperature: $TEMP" " STATUS: $STATUS">>$LOGDIR
if [ $TEMP -ge $VALUE ] && [ $STATUS -eq 0 ]
then
#echo `timestamp` " Warning: Fan started.">>$LOGDIR
echo "1">/sys/class/gpio/gpio17/value
elif [ $TEMP -lt $VALUE ] && [ $STATUS -eq 1 ]
then
#echo `timestamp` " Warning: Fan stopped.">>$LOGDIR
echo "0">/sys/class/gpio/gpio17/value
fi


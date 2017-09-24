# Raspberry-P-temperature-controlled-fan

https://hackernoon.com/raspberry-pi-temperature-controlled-fan-2aa0de72a564


Enable GPIO2: (root)

>  echo "2">/sys/class/gpio/export 

>  echo "out">/sys/class/gpio/gpio2/direction

Switch on GPIO Pin / Fan (root)

>  echo "1">/sys/class/gpio/gpio2/value

Switch off GPIO Pin / Fan (root)

>  echo "0">/sys/class/gpio/gpio2/value


mkdir /home/pi/fan

cd /home/pi/fan

nano fan.sh

crontab -e
* * * * * /home/pi/fan/./fan.sh
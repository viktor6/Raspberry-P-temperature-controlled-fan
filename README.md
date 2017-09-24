# Raspberry-P-temperature-controlled-fan

https://hackernoon.com/raspberry-pi-temperature-controlled-fan-2aa0de72a564

echo "2">/sys/class/gpio/export 

echo "out">/sys/class/gpio/gpio2/direction

echo "1">/sys/class/gpio/gpio2/value

echo "0">/sys/class/gpio/gpio2/value


mkdir /home/pi/fan

cd /home/pi/fan

nano fan.sh

crontab -e
* * * * * /home/pi/fan/./fan.sh
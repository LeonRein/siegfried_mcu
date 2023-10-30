#! /bin/bash

# request bootloader
can_uuid=1e05bdbc057b
echo "Requesting bootloader of $can_uuid"
python3 ~/katapult/scripts/flashtool.py -u $can_uuid -r # request bootloader

# wait for serial
echo "Waiting for serial device"

serial_device=""
sp="/-\|"
echo -n ' '
while [ -z "$serial_device" ]
do
  printf "\b${sp:i++%${#sp}:1}"
  serial_device=$(find /dev/ -wholename "/dev/serial/by-id/usb-katapult_stm32f446xx*")
  sleep 0.5
done
printf "\b"

# flash
echo "Flashing $serial_device"
python3 ~/katapult/scripts/flashtool.py -d $serial_device -f ~/klipper/out_octopus/klipper.bin
#! /bin/bash

can_uuid=211082196b79

# flash
echo "Flashing $can_uuid"
python3 ~/katapult/scripts/flashtool.py -u $can_uuid -f ~/klipper/out_ebb/klipper.bin

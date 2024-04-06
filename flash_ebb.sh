#! /bin/bash

can_uuid=9222d7d8561a

# flash
echo "Flashing $can_uuid"
python3 ~/katapult/scripts/flashtool.py -u $can_uuid -f ~/klipper/out_ebb/klipper.bin

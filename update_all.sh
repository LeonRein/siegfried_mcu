#! /bin/bash
systemctl stop klipper.service

pushd ~/klipper
git pull
pulld

pushd ~/katapult
git pull
pulld

./update_octopus.sh
./update_ebb.sh

systemctl start klipper.service
#! /bin/bash
systemctl stop klipper.service

pushd ~/klipper
git pull
popd

pushd ~/katapult
git pull
popd

./update_octopus.sh
./update_ebb.sh

systemctl start klipper.service
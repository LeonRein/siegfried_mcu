#! /bin/bash
systemctl stop klipper.service

pushd ~/klipper
git pull
popd

pushd ~/katapult
git pull
popd

./update_ebb.sh
./update_octopus.sh

systemctl start klipper.service
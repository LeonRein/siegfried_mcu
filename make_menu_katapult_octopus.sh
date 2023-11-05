#! /bin/sh
cd ~/katapult/
make KCONFIG_CONFIG=.config_octopus OUT=out_octopus/ menuconfig
make KCONFIG_CONFIG=.config_octopus OUT=out_octopus/ all
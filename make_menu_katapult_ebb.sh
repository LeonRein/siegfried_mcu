#! /bin/sh
cd ~/katapult/
make KCONFIG_CONFIG=.config_ebb OUT=out_ebb/ menuconfig
make KCONFIG_CONFIG=.config_ebb OUT=out_ebb/ all
#! /bin/sh
cd ~/klipper/
make KCONFIG_CONFIG=.config_sb2240 OUT=out_sb2240/ menuconfig
make KCONFIG_CONFIG=.config_sb2240 OUT=out_sb2240/ all
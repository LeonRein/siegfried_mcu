#! /bin/sh
SCRIPT_DIR=$(dirname "$(realpath "$0")")

cd ~/klipper/
make KCONFIG_CONFIG="$SCRIPT_DIR/.config_octopus" OUT=out_octopus/ all
#! /bin/sh
SCRIPT_DIR=$(dirname "$(realpath "$0")")

cd ~/katapult/
make KCONFIG_CONFIG="$SCRIPT_DIR/.config_katapult_octopus" OUT=out_octopus/ menuconfig
make KCONFIG_CONFIG="$SCRIPT_DIR/.config_katapult_octopus" OUT=out_octopus/ all
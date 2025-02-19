#! /bin/sh
SCRIPT_DIR=$(dirname "$(realpath "$0")")

cd ~/klipper/
make KCONFIG_CONFIG="$SCRIPT_DIR/.config_ebb" OUT=out_ebb/ all
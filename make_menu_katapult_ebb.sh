#! /bin/sh
SCRIPT_DIR=$(dirname "$(realpath "$0")")

cd ~/katapult/
make KCONFIG_CONFIG="$SCRIPT_DIR/.config_katapult_ebb" OUT=out_ebb/ menuconfig
make KCONFIG_CONFIG="$SCRIPT_DIR/.config_katapult_ebb" OUT=out_ebb/ all
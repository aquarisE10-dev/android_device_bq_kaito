#!/bin/bash
# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BROWN='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
DARKGRAY='\033[1;30m'
LIGHTGREEN='\033[1;32m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
NC='\033[0m' # No Color

# Variables
e=echo

cd ../../../..
$e -e "${RED}We are gonna patch bionic${NC}"
cd bionic
patch -p1 < ../device/bq/kaito/patches/bionic/0001-libc_memcpy_allow_to_disable_opt_for_some_targets.patch
cd ../
$e -e "${GREEN}We are gonna patch external/openssl${NC}"
cd external/openssl
patch -p1 < ../../device/bq/kaito/patches/external/openssl/0001-Add_AGPS_Mediatek_changes.patch
cd ../..
$e -e "${BROWN}We are gonna patch external/skia${NC}"
cd external/skia
patch -p1 < ../../device/bq/kaito/patches/external/skia/0001-Revert_Add-EXT-suffix-to-EXT_map_buffer_range-references.patch
patch -p1 < ../../device/bq/kaito/patches/external/skia/0002-Fix-building.patch
cd ../..
$e -e "${BLUE}We are gonna patch frameworks/base${NC}"
cd frameworks/base
patch -p1 < ../../device/bq/kaito/patches/frameworks/base/0001-Base.patch
cd ../..
$e -e "${PURPLE}We are gonna patch frameworks/native${NC}"
cd frameworks/native
patch -p1 < ../../device/bq/kaito/patches/frameworks/native/0001-Fix_egl_problems_game_crash.patch
cd ../..
$e -e "${CYAN}We are gonna patch frameworks/opt/telephony${NC}"
cd frameworks/opt/telephony
patch -p1 < ../../../device/bq/kaito/patches/frameworks/opt/telephoy/0001-Implement_fakeiccid_for_legacy_rils.patch
cd ../../..
$e -e "${YELLOW}We are gonna patch packages/apps/Camera2${NC}"
cd packages/apps/Camera2
patch -p1 < ../../../device/bq/kaito/patches/packages/apps/Camera2/0001-Disable_VideoRecordingHints.patch
cd ../../..
$e -e "${DARKGRAY}We are gonna patch packages/apps/Settings${NC}"
cd packages/apps/Settings
patch -p1 < ../../../device/bq/kaito/patches/packages/apps/Settings/0001-Add_SmartCover_app.patch
patch -p1 < ../../../device/bq/kaito/patches/packages/apps/Settings/0002-Move-SmartCover-to-display-settings.patch
patch -p1 < ../../../device/bq/kaito/patches/packages/apps/Settings/0003-Remove_usb_connected_check-Fix_offline_charging_mode.patch
cd ../../..
$e -e "${LIGHTGREEN}We are gonna patch packages/services/Telephony${NC}"
cd packages/services/Telephony
patch -p1 < ../../../device/bq/kaito/patches/packages/services/Telephony/0001-CardStateMonitor_Use_fakeiccid_if_needed_for_legacy_ril.patch
cd ../../..
$e -e "${LIGHTBLUE}We are gonna patch system/core${NC}"
cd system/core
patch -p1 < ../../device/bq/kaito/patches/system/core/0001-Add_depreciated_symbols_needed_by_old_MALI_blobs-by_kashifmin.patch
patch -p1 < ../../device/bq/kaito/patches/system/core/0002-Fix_MTK_audio_lib_log_spamming.patch
patch -p1 < ../../device/bq/kaito/patches/system/core/0003-Remove_ril_service_and_update_permissions.patch
patch -p1 < ../../device/bq/kaito/patches/system/core/0004-Fix_led_permissions-by_hyperion70.patch
patch -p1 < ../../device/bq/kaito/patches/system/core/0005-Add_missing_function_for_thermal.patch
patch -p1 < ../../device/bq/kaito/patches/system/core/0006-Add_mtk_audio_values.patch
cd ../..
$e -e "${LIGHTPURPLE}We are gonna patch system/netd${NC}"
cd system/netd
patch -p1 < ../../device/bq/kaito/patches/system/netd/0001-Add_mtk_wifi_tethering_support.patch
cd ../..

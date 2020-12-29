#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
BROWN='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
BGREEN='\033[1;32m'
BBLUE='\033[1;34m'
BPURPLE='\033[1;35m'
BWHITE='\033[1;37m'
BCYAN='\033[1;36m'
BRED='\033[1:31m'
NC='\033[0m' # No Color
cd ../../../..
echo -e "${BCYAN}We are gonna patch external/icu${NC}"
cd external/icu
patch -p1 < ../../device/bq/kaito/patches/external/icu.patch
cd ../..
echo -e "${RED}We are gonna patch external/wpa_supplicant_8${NC}"
cd external/wpa_supplicant_8
patch -p1 < ../../device/bq/kaito/patches/external/wpa_supplicant_8.patch
cd ../..
echo -e "${GREEN}We are gonna patch frameworks/av${NC}"
cd frameworks/av
patch -p1 < ../../device/bq/kaito/patches/frameworks/av.patch
cd ../..
echo -e "${BROWN}We are gonna patch frameworks/base${NC}"
cd frameworks/base
patch -p1 < ../../device/bq/kaito/patches/frameworks/base.patch
cd ../..
echo -e "${BLUE}We are gonna patch frameworks/native${NC}"
cd frameworks/native
patch -p1 < ../../device/bq/kaito/patches/frameworks/native.patch
cd ../..
echo -e "${PURPLE}We are gonna patch frameworks/opt/telephony${NC}"
cd frameworks/opt/telephony
patch -p1 < ../../../device/bq/kaito/patches/frameworks/telephony.patch
cd ../../..
echo -e "${CYAN}We are gonna patch packages/apps/Dialer${NC}"
cd packages/apps/Dialer
patch -p1 < ../../../device/bq/kaito/patches/packages/apps/Dialer.patch
cd ../../..
echo -e "${BRED}We are gonna patch packages/apps/Snap${NC}"
cd packages/apps/Dialer
patch -p1 < ../../../device/bq/kaito/patches/packages/apps/Snap.patch
cd ../../..
echo -e "${YELLOW}We are gonna patch packages/services/Telephony${NC}"
cd packages/services/Telephony
patch -p1 < ../../../device/bq/kaito/patches/packages/services/Telephony.patch
cd ../../..
echo -e "${BGREEN}We are gonna patch system/bt${NC}"
cd system/bt
patch -p1 < ../../device/bq/kaito/patches/system/bt.patch
cd ../..
echo -e "${BBLUE}We are gonna patch system/core${NC}"
cd system/core
patch -p1 < ../../device/bq/kaito/patches/system/core.patch
cd ../..
echo -e "${BPURPLE}We are gonna patch system/netd${NC}"
cd system/netd
patch -p1 < ../../device/bq/kaito/patches/system/netd.patch
cd ../..
echo -e "${BWHITE}We are gonna patch system/sepolicy${NC}"
cd system/sepolicy
patch -p1 < ../../device/bq/kaito/patches/system/sepolicy.patch
cd ../..

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
git checkout -- . && git clean -df
cd ../
$e -e "${GREEN}We are gonna patch external/openssl${NC}"
cd external/openssl
git checkout -- . && git clean -df
cd ../..
$e -e "${BROWN}We are gonna patch external/skia${NC}"
cd external/skia
git checkout -- . && git clean -df
cd ../..
$e -e "${BLUE}We are gonna patch frameworks/base${NC}"
cd frameworks/base
git checkout -- . && git clean -df
cd ../..
$e -e "${PURPLE}We are gonna patch frameworks/native${NC}"
cd frameworks/native
git checkout -- . && git clean -df
cd ../..
$e -e "${CYAN}We are gonna patch frameworks/opt/telephony${NC}"
cd frameworks/opt/telephony
git checkout -- . && git clean -df
cd ../../..
$e -e "${YELLOW}We are gonna patch packages/apps/Camera2${NC}"
cd packages/apps/Camera2
git checkout -- . && git clean -df
cd ../../..
$e -e "${DARKGRAY}We are gonna patch packages/apps/Settings${NC}"
cd packages/apps/Settings
git checkout -- . && git clean -df
cd ../../..
$e -e "${LIGHTGREEN}We are gonna patch packages/services/Telephony${NC}"
cd packages/services/Telephony
git checkout -- . && git clean -df
cd ../../..
$e -e "${LIGHTBLUE}We are gonna patch system/core${NC}"
cd system/core
git checkout -- . && git clean -df
cd ../..
$e -e "${LIGHTPURPLE}We are gonna patch system/netd${NC}"
cd system/netd
git checkout -- . && git clean -df
cd ../..

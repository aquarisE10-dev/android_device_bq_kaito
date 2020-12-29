#!/bin/bash
cd ../../../..
cd external/wpa_supplicant_8
git checkout -- . && git clean -df
cd ../..
cd frameworks/av
git checkout -- . && git clean -df
cd ../..
cd frameworks/base
git checkout -- . && git clean -df
cd ../..
cd frameworks/native
git checkout -- . && git clean -df
cd ../..
cd frameworks/opt/telephony
git checkout -- . && git clean -df
cd ../../..
cd packages/apps/Dialer
git checkout -- . && git clean -df
cd ../../..
cd packages/services/Telephony
git checkout -- . && git clean -df
cd ../../..
cd system/bt
git checkout -- . && git clean -df
cd ../..
cd system/core
git checkout -- . && git clean -df
cd ../..
cd system/netd
git checkout -- . && git clean -df
cd ../..
cd system/sepolicy
git checkout -- . && git clean -df
cd ../..

#!/bin/bash

# clone openwrt

git clone -b openwrt-21.02 https://git.openwrt.org/openwrt/openwrt.git
git clone https://github.com/kenzok8/openwrt-packages.git

# version replace

cd openwrt && sed -i 's/-SNAPSHOT/.1/g' include/version.mk

# source update and install

./scripts/feeds update -a && ./scripts/feeds install -a

# clone openwrt plugin source

git clone https://github.com/gw826943555/openwrt-vlmcsd.git package/openwrt-vlmcsd

mv ../openwrt-packages/luci-app-smartdns/ package/

mv ../openwrt-packages/smartdns/ package/

# copy build file and config

cp ../.config .config

# openwrt build dependencies

make defconfig && make download -j8

# make openwrt source

make -j4


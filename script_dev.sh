#!/bin/bash

cd openwrt

# source update and install

./scripts/feeds update -a	
./scripts/feeds install -a

# clone openwrt plugin source

git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/smzhzy/openwrt_vlmcsd.git package/vlmcsd

# copy build file and config

cp ../.config.dev .config
cp -r ../files ./

# openwrt build dependencies

make defconfig
make download -j8

# make openwrt source

make -j4

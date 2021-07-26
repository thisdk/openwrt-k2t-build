#!/bin/bash

# clone openwrt

git clone -b openwrt-21.02 https://git.openwrt.org/openwrt/openwrt.git

# version replace

cd openwrt && sed -i 's/-SNAPSHOT/.1/g' include/version.mk

# source update and install

./scripts/feeds update -a && ./scripts/feeds install -a

# copy build file and config

cp ../.config .config

# openwrt build dependencies

make defconfig

# make openwrt source

make -j8


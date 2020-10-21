#!/bin/bash

cd openwrt

# source update and install

./scripts/feeds update -a	
./scripts/feeds install -a

# copy build file and config

cp ../.config.dev .config

# openwrt build dependencies

make defconfig
make download -j8

# make openwrt source

make -j4


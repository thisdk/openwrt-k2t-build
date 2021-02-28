#!/bin/bash

# clone openwrt

git clone -b openwrt-19.07 https://git.openwrt.org/openwrt/openwrt.git

git clone https://github.com/coolsnowwolf/lede.git

# version replace

cd openwrt && sed -i 's/-SNAPSHOT/.7/g' include/version.mk

# conntrack max

echo "net.netfilter.nf_conntrack_max=32768" >> ./package/base-files/files/etc/sysctl.conf

# source update and install

./scripts/feeds update -a && ./scripts/feeds install -a


# clone openwrt plugin source

mv ../lede/package/lean/mt/ package/mt
git clone https://github.com/honwen/luci-app-aliddns.git package/luci-app-aliddns
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/gw826943555/openwrt-vlmcsd.git package/openwrt-vlmcsd
git clone https://github.com/thisdk/openwrt-k2p-package.git package/openwrt-k2p-package

# copy build file and config

cp ../.config.k2p ./.config

# openwrt build dependencies

make defconfig && make download -j8

# make openwrt source

make -j4


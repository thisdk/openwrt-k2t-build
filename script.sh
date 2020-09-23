#!/bin/bash

cd openwrt

# source update and install

./scripts/feeds update -a	
./scripts/feeds install -a

# remove shadowsocks plugin

rm -rf feeds/luci/applications/luci-app-shadowsocks-libev	
rm -rf feeds/luci.tmp/info/.packageinfo-applications_luci-app-shadowsocks-libev	
rm -rf feeds/packages/net/shadowsocks-libev	
rm -rf feeds/packages.tmp/info/.packageinfo-net_shadowsocks-libev	
rm -rf package/feeds/luci/luci-app-shadowsocks-libev	
rm -rf package/feeds/packages/shadowsocks-libev

# clone openwrt plugin source

git clone https://github.com/LGA1150/openwrt-fullconenat.git package/fullconenat	
git clone https://github.com/honwen/luci-app-aliddns.git package/luci-app-aliddns	
git clone https://github.com/smzhzy/openwrt_vlmcsd.git package/vlmcsd
git clone https://github.com/shadowsocks/openwrt-shadowsocks.git package/shadowsocks	
git clone https://github.com/shadowsocks/luci-app-shadowsocks.git package/luci-app-shadowsocks	
git clone https://github.com/thisdk/openwrt-udp2raw.git package/udp2raw
git clone https://github.com/thisdk/luci-app-udp2raw.git package/luci-app-udp2raw
git clone https://github.com/thisdk/openwrt-speederv2.git package/udpspeederv2
git clone https://github.com/thisdk/luci-app-speederv2.git package/luci-app-speederv2
git clone https://github.com/thisdk/openwrt-smartdns.git package/smartdns
git clone https://github.com/thisdk/luci-app-smartdns.git package/luci-app-smartdns
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon

# copy build file and config

cp ../.config.k2p ./.config
cp -r ../files ./

# openwrt build dependencies

make defconfig
make download -j4

# make openwrt source

make -j2


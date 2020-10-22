## OpenWrt 自动构建
[![](https://github.com/thisdk/openwrt-k2p-build/workflows/OpenWrt%20K2P%20MASTER%20CI/badge.svg)](https://github.com/thisdk/openwrt-k2p-build/actions)
[![](https://github.com/thisdk/openwrt-k2p-build/workflows/OpenWrt%20K2P%20DEV%20CI/badge.svg)](https://github.com/thisdk/openwrt-k2p-build/actions)

使用了GitHub Actions进行固件编译.编译完成自动发布到release

### 每周定时编译

并且设置了定时.每周都会从openwrt 19.07分支下clone代码.去编译新版本的固件.

这里的新版本可能是内核升级.插件的升级.不需要对配置文件进行改动,每周新编译版本可以在Action里的Artifacts里下载

### 配置文件

配置文件采用差异模式.只需要配置与默认配置不同的地方即可,如此一来.只需要注释配置文件

就可以实现插件是否编译进固件.但是需要丰富经验才可以这样改.因为这样可能需要加上依赖


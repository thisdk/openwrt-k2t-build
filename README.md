## OpenWrt 自动构建
[![](https://github.com/thisdk/openwrt-k2p-build/workflows/OpenWrt%20K2P%20CI/badge.svg)](https://github.com/thisdk/openwrt-k2p-build/actions)
[![](https://github.com/thisdk/openwrt-k2p-build/workflows/OpenWrt%20Weekly%20CI/badge.svg)](https://github.com/thisdk/openwrt-k2p-build/actions)

使用了GitHub Actions进行固件编译.编译完成自动发布到release

### Weekly

并且设置了定时.每周都会从openwrt 19.07分支下clone代码.去编译新版本的固件.

这里的新版本可能是内核升级.插件的升级.不需要对配置文件进行改动,每周新编译版本可以在Action里的Artifacts里下载

### 关于19.07

其实我一开始挺抗拒19.07的.因为感觉没有什么新特性.但是用了发现,19.07修复HWNAT的问题,而且超频导致的时间加快也修复了.所以还是挺推荐使用的.

现在我编译的版本只有fullconenat,smartdns,5.0.2.0-wifi,算是纯净版吧.感觉其他那些东西在k2p的性能下.都做得不太好.


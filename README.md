## OpenWrt 自动构建
[![](https://github.com/thisdk/openwrt-k2p-build/workflows/OpenWrt%20K2P%20CI/badge.svg)](https://github.com/thisdk/openwrt-k2p-build/actions)
[![](https://github.com/thisdk/openwrt-k2p-build/workflows/OpenWrt%20Weekly%20CI/badge.svg)](https://github.com/thisdk/openwrt-k2p-build/actions)

使用了GitHub Actions进行固件编译.编译完成自动发布到release

### Weekly

并且设置了定时.每周都会从openwrt 19.07分支下clone代码.去编译新版本的固件.

这里的新版本可能是内核升级.插件的升级.不需要对配置文件进行改动,每周新编译版本可以在Action里的Artifacts里下载

### 关于19.07

其实我一开始挺抗拒19.07的.因为感觉没有什么新特性.但是用了发现,19.07修复HWNAT的问题,而且超频导致的时间加快也修复了.所以还是挺推荐使用的.

现在我编译的版本只有fullconenat,5.0.2.0-wifi,算是纯净版吧.感觉其他那些东西在k2p的性能下.都做得不太好.

smartdns还是手动装吧,可以升级可以卸载.aliddns也编译了.不过没编译进固件里,可以Artifacts里面下载.

### KMS的集成问题.

原本我使用的kms库在18.06是没有UI错误,但是在激活Windows10 19.09版本的专业工作站版本是有问题的,其他版本没问题.

后面我使用lean的kms源码,在19.07,UI没有错误,但是却启动不起来,看了下他的目标二进制,版本和我原本使用的是同一个版本

感觉还是无法激活我使用的专业工作站版本.后面我就不折腾了.可以自己装.




### 访问数：[![](https://visitor-badge.glitch.me/badge?page_id=sirpdboy-visitor-badge)] [![](https://img.shields.io/badge/TG群-点击加入-FFFFFF.svg)](https://t.me/joinchat/AAAAAEpRF88NfOK5vBXGBQ)

![screenshots](https://raw.githubusercontent.com/sirpdboy/openwrt/master/doc/说明1.jpg)

=
# luci-app-partexp

luci-app-partexp 一键自动格式化分区、扩容、自动挂载插件
[![若部分图片无法正常显示，请挂上机场浏览或点这里到末尾看修复教程](https://visitor-badge.glitch.me/badge?page_id=sirpdboy-visitor-badge)](#解决-github-网页上图片显示失败的问题) [![](https://img.shields.io/badge/TG群-点击加入-FFFFFF.svg)](https://t.me/joinchat/AAAAAEpRF88NfOK5vBXGBQ)

[luci-app-partexp](https://github.com/sirpdboy/luci-app-partexp)
======================


请 **认真阅读完毕** 本页面，本页面包含注意事项和如何使用。

## 功能说明：


#### 一键自动格式化分区、扩容、自动挂载插件，专为OPENWRT设计，简化OPENWRT在分区挂载上烦锁的操作。本插件是sirpdboy耗费大量精力制作测试，请勿删除制作者信息！！

<!-- TOC -->

- [partexp](#luci-app-partexp)
  - [特性](#特性)
  - [使用方法](#使用方法)
  - [说明](#说明)
  - [界面](#界面)
  - [捐助](#捐助)

<!-- /TOC -->

## 特性
 luci-app-partexp 自动获格式化分区扩容，自动挂载插件

## 使用方法

- 将luci-app-partexp添加至 LEDE/OpenWRT 源码的方法。

### 下载源码方法一：
- 编辑源码文件夹根目录feeds.conf.default并加入如下内容:

```Brach

    # feeds获取源码：
	
    src-git luci-app-partexp https://github.com/sirpdboy/luci-app-partexp
 ``` 
  ```Brach
  
   # 更新feeds，并安装主题：
   
    scripts/feeds update luci-app-partexp
	scripts/feeds install luci-app-partexp
 ``` 	

### 下载源码方法二：

 ```Brach
 
    # 下载源码
	
    git clone https://github.com/sirpdboy/luci-app-partexp.git package/luci-app-partexp
    make menuconfig
	
 ``` 
### 配置菜单

 ```Brach
    make menuconfig
	# 找到 LuCI -> Applications, 选择 luci-app-partexp, 保存后退出。
 ``` 
 
### 编译

 ```Brach 
    # 编译固件
    make package/luci-app-partexp/compile V=s
 ```

## 说明

![screenshots](https://raw.githubusercontent.com/sirpdboy/openwrt/master/doc/说明2.jpg)

## 界面

![screenshots](https://raw.githubusercontent.com/sirpdboy/openwrt/master/doc/partexp.jpg)


# My other project

网络速度测试 ：https://github.com/sirpdboy/NetSpeedTest

定时设置插件 : https://github.com/sirpdboy/luci-app-autotimeset

关机功能插件 : https://github.com/sirpdboy/luci-app-poweroffdevice

opentopd主题 : https://github.com/sirpdboy/luci-theme-opentopd

opentoks 主题: https://github.com/sirpdboy/luci-theme-opentoks [仿KOOLSAHRE主题]

btmob 主题: https://github.com/sirpdboy/luci-theme-btmob

系统高级设置 : https://github.com/sirpdboy/luci-app-advanced

ddns-go动态域名: https://github.com/sirpdboy/luci-app-ddns-go

lucky大吉: https://github.com/sirpdboy/luci-app-lucky

## 捐助

![screenshots](https://raw.githubusercontent.com/sirpdboy/openwrt/master/doc/说明3.jpg)

|     <img src="https://img.shields.io/badge/-支付宝-F5F5F5.svg" href="#赞助支持本项目-" height="25" alt="图飞了😂"/>  |  <img src="https://img.shields.io/badge/-微信-F5F5F5.svg" height="25" alt="图飞了😂" href="#赞助支持本项目-"/>  | 
| :-----------------: | :-------------: |
|![xm1](https://raw.githubusercontent.com/sirpdboy/openwrt/master/doc/支付宝.png) | ![xm1](https://raw.githubusercontent.com/sirpdboy/openwrt/master/doc/微信.png) |

<a href="#readme">
    <img src="https://img.shields.io/badge/-返回顶部-orange.svg" alt="图飞了😂" title="返回顶部" align="right"/>
</a>

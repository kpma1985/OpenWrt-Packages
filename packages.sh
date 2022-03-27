#!/bin/bash

# ============================================================
# PACKAGES START
# ============================================================

# MosDNS
svn co https://github.com/QiuSimons/openwrt-mos/trunk/luci-app-mosdns package/luci-app-mosdns
svn co https://github.com/QiuSimons/openwrt-mos/trunk/v2ray-geodata package/v2ray-geodata
svn co https://github.com/QiuSimons/openwrt-mos/trunk/mosdns package/mosdns

# DDNS.to
svn co https://github.com/linkease/nas-packages-luci/trunk/luci/luci-app-ddnsto package/luci-app-ddnsto
svn co https://github.com/linkease/nas-packages/trunk/network/services/ddnsto package/ddnsto

# 易有云
svn co https://github.com/linkease/nas-packages-luci/trunk/luci/luci-app-linkease package/luci-app-linkease
svn co https://github.com/linkease/nas-packages/trunk/network/services/linkease package/linkease

# 实时监控
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-netdata package/luci-app-netdata
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/netdata package/netdata

# 流量监控
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-wrtbwmon package/luci-app-wrtbwmon
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/wrtbwmon package/wrtbwmon

# Gost
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-gost package/luci-app-gost
svn co https://github.com/kenzok8/openwrt-packages/trunk/gost package/gost

# THEMES
svn co https://github.com/womade/OpenWrt-Themes/trunk/luci-theme-edge luci-theme-edge
svn co https://github.com/womade/OpenWrt-Themes/trunk/luci-theme-supernet luci-theme-supernet
svn co https://github.com/womade/OpenWrt-Themes/trunk/luci-theme-argon luci-theme-argon
svn co https://github.com/womade/OpenWrt-Themes/trunk/luci-app-argon-config luci-app-argon-config
svn co https://github.com/rosywrt/luci-theme-rosy/trunk/luci-theme-rosy luci-theme-rosy
svn co https://github.com/haiibo/packages/trunk/luci-theme-darkmatter luci-theme-darkmatter
svn co https://github.com/haiibo/packages/trunk/luci-theme-atmaterial luci-theme-atmaterial
svn co https://github.com/haiibo/packages/trunk/luci-theme-opentomcat luci-theme-opentomcat
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom luci-theme-infinityfreedom
git clone https://github.com/sirpdboy/luci-theme-opentopd luci-theme-opentopd

# OTHERS
git clone https://github.com/womade/luci-app-poweroff package/luci-app-poweroff
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
git clone https://github.com/kongfl888/luci-app-adguardhome.git package/luci-app-adguardhome
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/iwrt/luci-app-ikoolproxy.git package/luci-app-ikoolproxy
git clone https://github.com/sirpdboy/luci-app-advanced package/luci-app-advanced
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-eqos package/luci-app-eqos
svn co https://github.com/kiddin9/openwrt-bypass/trunk/luci-app-bypass package/luci-app-bypass
svn co https://github.com/lisaac/luci-app-dockerman/trunk/applications/luci-app-dockerman package/luci-app-dockerman
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-smartdns package/luci-app-smartdns
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-socat package/luci-app-socat

git clone https://github.com/kenzok8/openwrt-packages ops
git clone https://github.com/kenzok8/small dps

mv -n package/* ./ ; rm -Rf package
rm -rf ops/README.md
rm -rf dps/README.md
mv -n ops/* ./ ; rm -Rf ops
mv -n dps/* ./ ; rm -Rf dps

# ============================================================
# PACKAGES END
# ============================================================





# ------------------------------------------------------------
# MODIFY START
# ------------------------------------------------------------

# 调整阿里云盘到存储菜单
sed -i 's/services/nas/g' luci-app-aliyundrive-webdav/luasrc/controller/*.lua
sed -i 's/services/nas/g' luci-app-aliyundrive-webdav/luasrc/model/cbi/aliyundrive-webdav/*.lua
sed -i 's/services/nas/g' luci-app-aliyundrive-webdav/luasrc/view/aliyundrive-webdav/*.htm

# ------------------------------------------------------------
# MODIFY END
# ------------------------------------------------------------


# EXIT
rm -rf ./*/.git
rm -f ./*/.gitattributes
rm -rf ./*/.svn
rm -rf ./*/.github
rm -rf ./*/.gitignore
exit 0  

#!/bin/bash

git clone https://github.com/kiddin9/openwrt-packages

rm -rf openwrt-packages/*.md
mv -n openwrt-packages/* ./ ; rm -Rf openwrt-packages




# Default IP
sed -i 's/192.168.1.1/10.0.0.1/g' base-files/files/bin/config_generate

# Hostname
sed -i 's/OpenWrt/SuperNet/g' base-files/files/bin/config_generate

# Timezone
sed -i "s/'UTC'/'CST-8'\n   set system.@system[-1].zonename='Asia\/Shanghai'/g" base-files/files/bin/config_generate

# Modify banner
wget --no-check-certificate https://raw.githubusercontent.com/womade/LEDE_actions/main/modify/banner/banner -O base-files/files/etc/banner




# EXIT
rm -rf ./*/.git
rm -f ./*/.gitattributes
rm -rf ./*/.svn
rm -rf ./*/.github
rm -rf ./*/.gitignore
exit 0  

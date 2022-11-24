#!/bin/bash

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

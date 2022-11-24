#!/bin/bash

git clone https://github.com/kiddin9/openwrt-packages
rm -rf openwrt-packages/README.md
mv -n openwrt-packages/* packages ; rm -rf openwrt-packages

# EXIT
rm -rf ./*/.git
rm -f ./*/.gitattributes
rm -rf ./*/.svn
rm -rf ./*/.github
rm -rf ./*/.gitignore
exit 0  

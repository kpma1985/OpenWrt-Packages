#!/bin/bash

git clone https://github.com/kiddin9/openwrt-packages
cp -rf openwrt-packages ../
rm -rf openwrt-packages


# EXIT
rm -rf ./*/.git
rm -f ./*/.gitattributes
rm -rf ./*/.svn
rm -rf ./*/.github
rm -rf ./*/.gitignore
exit 0  

#!/bin/bash

git clone https://github.com/kiddin9/openwrt-packages
mv openwrt-packages $GITHUB_WORKSPACE/packages


# EXIT
rm -rf ./*/.git
rm -f ./*/.gitattributes
rm -rf ./*/.svn
rm -rf ./*/.github
rm -rf ./*/.gitignore
exit 0  

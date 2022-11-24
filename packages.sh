#!/bin/bash

git clone https://github.com/kiddin9/openwrt-packages ops
rm -rf ops/README.md
mv -n ops/* ./ ; rm -Rf ops

# EXIT
rm -rf ./*/.git
rm -f ./*/.gitattributes
rm -rf ./*/.svn
rm -rf ./*/.github
rm -rf ./*/.gitignore
exit 0  

#!/bin/bash

git clone https://github.com/kiddin9/openwrt-packages

rm -rf openwrt-packages/*.md
mv -n openwrt-packages/* ./ ; rm -Rf openwrt-packages

sed -i "s|https://github.com/kiddin9/|https://msg.ssss.fun#|g" *
sed -i "s|https://github.com/kiddin9/|https://msg.ssss.fun#|g" */*
sed -i "s|https://github.com/kiddin9/|https://msg.ssss.fun#|g" */*/*
sed -i "s|https://github.com/kiddin9/|https://msg.ssss.fun#|g" */*/*/*
sed -i "s|https://github.com/kiddin9/|https://msg.ssss.fun#|g" */*/*/*/*
sed -i "s|https://github.com/kiddin9/|https://msg.ssss.fun#|g" */*/*/*/*/*
sed -i "s|https://github.com/kiddin9/|https://msg.ssss.fun#|g" */*/*/*/*/*/*
sed -i "s|https://github.com/kiddin9/|https://msg.ssss.fun#|g" */*/*/*/*/*/*/*
sed -i "s|https://github.com/kiddin9/|https://msg.ssss.fun#|g" */*/*/*/*/*/*/*/*
sed -i "s|https://github.com/kiddin9/|https://msg.ssss.fun#|g" */*/*/*/*/*/*/*/*/*
sed -i "s|https://github.com/kiddin9/|https://msg.ssss.fun#|g" */*/*/*/*/*/*/*/*/*/*

# EXIT
rm -rf ./*/.git
rm -f ./*/.gitattributes
rm -rf ./*/.svn
rm -rf ./*/.github
rm -rf ./*/.gitignore
exit 0  

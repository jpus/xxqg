#!/bin/sh

root="/usr/share/adblock"
File="${root}/adblock ${root}/addown"

# 备份部分
for i in $File
do
    if [ ! -f "${i}.bak" ]; then
            cp $i ${i}.bak
    fi
done

sed -i 's#https://cdn.jsdelivr.net/gh/small-5/ad-rules/dnsmasq.adblock#https://gitee.com/fangxx3863/Adblock_Plus_List/raw/master/easylistchina#g' ${root}/addown
sed -i 's#https://raw.githubusercontent.com/small-5/ad-rules/master/dnsmasq.adblock#https://raw.githubusercontent.com/fangxx3863/Adblock_Plus_List/main/easylistchina#g' ${root}/addown
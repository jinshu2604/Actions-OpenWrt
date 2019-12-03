#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.1.100/g' package/base-files/files/bin/config_generate
# Repair timecloud bugs
sed -i '/DTS := Timecloud/a\  IMAGE_SIZE := $(ralink_default_fw_size_16M)' target/linux/ramips/image/mt7621.mk

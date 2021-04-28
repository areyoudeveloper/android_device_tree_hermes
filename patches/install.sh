#!/bin/sh

rootdirectory="$PWD"
dirs="frameworks/av frameworks/base frameworks/native system/core"

RED='\033[0;31m'
NC='\033[0m'

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
    echo -e "${RED}Applying ${NC}$dir ${RED}patches...${NC}\n"
	git apply $rootdirectory/device/xiaomi/hermes/patches/$dir/*.patch
done

echo "Done!"
cd $rootdirectory

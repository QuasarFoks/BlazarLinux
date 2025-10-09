#!/bin/bash 
echo "BlazarLinux kernel (Linux-6.17.1)"

LINUX="Linux-6.17.1"
LINUX_DOWNLOAD="https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.1.tar.xz"
PATCH="https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.1.xz"

wget ${LINUX_DOWNLOAD}
wget ${PATCH}
tar -xf linux-6.17.1.tar.xz
xz -dk patch-6.17.1xz
cd linux-6.17.1
patch -p1 < ../patch-6.17.1
cp ../config .config
clear
echo "///////////////////////////////////////////"
echo "//                                       //"
echo "//          BlazarLinux Kernel           //"
echo "//                                       //"
echo "///////////////////////////////////////////"
echo "// Сколько ядер использовать для сборки? //"
echo "//                                       //"
echo "//  1) Все ядра (не рекомендуется)       //"
echo "//  2) Однопоточная сборка               //"
echo "//  3) Параметр задан ранее              //"
echo "//                                       //"
echo "///////////////////////////////////////////"
echo ""
read -p "[1-3]>>  " make_glass

case $make_glass in 
	1) make -j$(nproc) ;;
	2) make -j1 ;;
	3) make ;;
esac


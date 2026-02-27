#!/bin/bash
echo "////////////////////////////////////////////////////////////"
echo "//                   BlazarLinux-buiding                  //"
echo "////////////////////////////////////////////////////////////"
echo "// перед сборкой ознакомтесь с книгой LFS и BlaszarWIKI   //"
echo "//--------------------------------------------------------//"
echo "// Этапы сборки:                                          //"
echo "//        1) Подготовка                                   //"
echo "//        2) Крос компеляция                              //"
echo "//        3) chroot и отвязка от host                     //"
echo "//                                                        //"
echo "////////////////////////////////////////////////////////////"
#clear
read -p "[1-3]>> " choise
case "$choise" in
    1)
        export BLAZAR=/mnt/blazar
        export TOOL="$BLAZAR"/tools
        export SOURCES="$BLAZAR"/sources
        build/build_tool.sh
        ;;
    2)
        export BLAZAR=/mnt/blazar
        export TOOL="$BLAZAR"/tools
        export SOURCES="$BLAZAR"/sources
        build/crossbuild.sh
        ;;
    3) echo "Реализуется" ;;
esac

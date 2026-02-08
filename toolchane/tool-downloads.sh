#!/usr/bin/env bash

export BLAZAR=/mnt/blazar
export TOOL="$BLAZAR"/tool
export SOURCES="$BLAZAR"/sources

package=(
    "https://repo.linuxfromscratch.ru/lfs/12.2/binutils-2.43.1.tar.xz"
    "https://repo.linuxfromscratch.ru/lfs/12.2/gcc-14.2.0.tar.xz"
    "https://repo.linuxfromscratch.ru/lfs/12.2/mpc-1.3.1.tar.gz"
    "https://repo.linuxfromscratch.ru/lfs/12.2/mpfr-4.2.1.tar.xz"
    "https://repo.linuxfromscratch.ru/lfs/12.2/glibc-2.40.tar.xz"
    "https://repo.linuxfromscratch.ru/lfs/12.2/gmp-6.3.0.tar.xz"
    "https://repo.linuxfromscratch.ru/lfs/12.2/linux-6.10.5.tar.xz"
)

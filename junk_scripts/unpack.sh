#!/bin/sh

PWD=`pwd`
IN_DIR=$PWD
BOOT_IMG=$IN_DIR/boot.img
OUT_DIR=$PWD/out
BOOT_UNPACK_DIR=$OUT_DIR/boot_unpack
RAMDISK_UNPACK_DIR=$BOOT_UNPACK_DIR/ramdisk

SPLIT_SCRIPT=$PWD/split_bootimg.pl

KERNEL=$BOOT_UNPACK_DIR/boot.img-kernel
RAMDISK_GZ=$BOOT_UNPACK_DIR/boot.img-ramdisk.gz

rm -rf $BOOT_UNPACK_DIR
mkdir -p $BOOT_UNPACK_DIR
cd $BOOT_UNPACK_DIR
  $SPLIT_SCRIPT $BOOT_IMG
  mkdir -p $RAMDISK_UNPACK_DIR
  cd $RAMDISK_UNPACK_DIR
    gunzip -dc $RAMDISK_GZ | cpio -i


#!/bin/sh

CMDLINE="no_console_suspend=1\ console=null"
#BOARDNAME=legend
BASEADDR=0x12C00000

PWD=`pwd`
IN_DIR=$PWD
OUT_DIR=$PWD/out
BOOT_UNPACK_DIR=$OUT_DIR/boot_unpack
RAMDISK_UNPACK_DIR=$BOOT_UNPACK_DIR/ramdisk
KERNEL=$BOOT_UNPACK_DIR/boot.img-kernel

BOOT_PACK_DIR=$OUT_DIR/boot_pack
OUT_RAMDISK_GZ=$BOOT_PACK_DIR/boot.img-ramdisk.gz
OUT_BOOT_IMG=$BOOT_PACK_DIR/boot.img

MKBOOTFS=$PWD/mkbootfs
MKBOOTIMG=$PWD/mkbootimg

cp -v $PWD/../kernel $KERNEL
cp -v $PWD/../init.rc $RAMDISK_UNPACK_DIR
cp -v $PWD/../init.legend.rc $RAMDISK_UNPACK_DIR

#rm -rf $BOOT_PACK_DIR
mkdir -p $BOOT_PACK_DIR
cd $BOOT_UNPACK_DIR
$MKBOOTFS $RAMDISK_UNPACK_DIR | gzip > $OUT_RAMDISK_GZ
echo $MKBOOTIMG \
    --kernel  $KERNEL \
    --ramdisk $OUT_RAMDISK_GZ \
    --cmdline $CMDLINE \
    --base    $BASEADDR \
    --output  $OUT_BOOT_IMG > e.sh && sh e.sh && rm e.sh

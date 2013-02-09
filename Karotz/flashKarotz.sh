#!/bin/bash
#

cd /usr/karotz

wget http://karotz.wizz.cc/rootfs.wizz.120719r2.img.gz
wget http://karotz.wizz.cc/rootfs.wizz.120719r2.img.gz.md5

CHECKMD5WIZZ=md5sum rootfs.wizz.120719r2.img.gz
LIREMD5COMP=cat rootfs.wizz.120719r2.img.gz.md5

if [CHECKMD5WIZZ = LIREMD5COMP]
	then
		/sbin/flash_eraseall /dev/mtd2
		/sbin/nandwrite -pm /dev/mtd2 rootfs.wizz.120719r2.img.gz
	fi
	
reboot	
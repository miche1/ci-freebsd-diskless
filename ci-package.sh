#!/bin/bash

FREEBSD_VERSION="12.1"

echo "Download kernel.txz ..."
wget https://download.freebsd.org/ftp/releases/amd64/amd64/$FREEBSD_VERSION-RELEASE/kernel.txz
tar Jxf kernel.txz
rm kernel.txz

echo "Download base.txz..."
wget https://download.freebsd.org/ftp/releases/amd64/amd64/$FREEBSD_VERSION-RELEASE/base.txz
tar Jxf base.txz
rm base.txz

echo 'autoboot_delay="0"' > boot/loader.conf

echo "Creating final archive..."
tar -cvf freebsd_diskless_boot.tar *
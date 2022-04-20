#!/bin/sh

umount -l rootfs/proc
umount -l rootfs/dev
umount -l rootfs/sys
rm -frv rootfs
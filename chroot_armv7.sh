export CLARCH=arm
export CLROOT=rootfs-arm
mount --bind /proc ${CLROOT}/proc
mount --bind /sys ${CLROOT}/sys
mount --bind /dev ${CLROOT}/dev
mount --bind /proc/pts ${CLROOT}/proc/pts
cp /etc/resolv.conf ${CLROOT}/etc/

# copy binfmt emulation
cp /usr/bin/qemu-${CLARCH}-binfmt ${CLROOT}/usr/bin
cp /usr/bin/qemu-${CLARCH} ${CLROOT}/usr/bin

chroot ${CLROOT}

#!/bin/bash

# Check if user is root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
fi

# Clear not used packages
pacman -Rns $(pacman -Qdtq)

# Clear cache
pacman -Scc

journalctl --vacuum-time=1m
journalctl --vacuum-size=1M
rm -rf /var/cache/*
rm -rf /var/tmp/*
rm -rf ~/.cache/*

dd if=/dev/zero of=/zerofile bs=1M status=progress
rm -f /zerofile
sync

echo "Run: qemu-img convert -O qcow2 -c original.qcow2 compressed.qcow2"

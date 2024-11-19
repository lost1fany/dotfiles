#!/bin/bash

# Check if user is root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
fi

echo "[ ] Clear unused packages"
pacman -Rns $(pacman -Qdtq) --noconfirm
echo "[+]Clearing done"

echo "[ ] Clear cache"
pacman -Scc --noconfirm
echo "[+] Done"

echo "[ ] Clear logs"
journalctl --vacuum-time=1m
journalctl --vacuum-size=1M
echo "[+] Done"

echo "[ ] Clear tmp"
rm -rf /tmp/*
rm -rf /var/log/*
rm -rf /var/cache/*
rm -rf /var/tmp/*
rm -rf ~/.cache/*
echo "[+] Done"

echo "[ ] Clear disk space"
echo "   Step 1: Creating empty file"
dd if=/dev/zero of=/zerofile bs=1M status=progress
echo "   Step 2: Syncing file"
sync
echo "   Step 3: Removing file"
rm -f /zerofile
echo "   Step 4: Syncing file"
sync
echo "[+] Done"

echo "Run: qemu-img convert -O qcow2 -c original.qcow2 compressed.qcow2"

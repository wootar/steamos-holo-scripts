#!/bin/sh
# SteamOS 3.0 (Holo) Installer

echo "SteamOS 3.0 Installer"
echo "WARNING: This is an unoffical product, As SteamOS 3.0 (Holo) was meant for the Steam Deck
But again, I'm not stopping you. 
"

echo "Preparing"
sudo mkdir /etc/pacman.d || true
sudo mkdir rootfs || true
sudo cp base/mirrorlist-steamos /etc/pacman.d
sudo pacstrap -M -i -G -C base/pacman.conf rootfs base htop neofetch || sudo basestrap -M -i -G -C base/pacman.conf rootfs base htop neofetch || echo "Please install arch install scripts"; exit 1
echo Done!
exit 0
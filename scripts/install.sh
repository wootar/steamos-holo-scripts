#!/bin/sh
# SteamOS 3.0 (Holo) Installer

echo "SteamOS 3.0 Installer"
echo "WARNING: This is an unoffical product, As SteamOS 3.0 (Holo) was meant for the Steam Deck
But again, I'm not stopping you. 
"

sleep 1

echo "Preparing"
mkdir /etc/pacman.d || true
mkdir rootfs || true
cp base/mirrorlist-steamos /etc/pacman.d
pacstrap -M -i -G -C base/pacman.conf rootfs base networkmanager sudo konsole plasma-meta htop neofetch steamdeck-kde-presets steamfs-git steam-jupiter-stable steamos-customizations-jupiter || basestrap -M -i -G -C base/pacman.conf rootfs base networkmanager sudo konsole plasma-meta htop neofetch steamdeck-kde-presets steamfs-git steam-jupiter-stable steamos-customizations-jupiter || echo "Please install arch install scripts"; exit 1
cp base/pacman.conf rootfs/etc/pacman.conf
cp base/mirrorlist-steamos rootfs/etc/pacman.d/mirrorlist-steamos
echo '%wheel ALL=(ALL:ALL) ALL' >> rootfs/etc/sudoers
echo "Please setup a password."
chroot ./rootfs /bin/mkdir /home/steam
chroot ./rootfs /sbin/useradd -G "audio,video,wheel" steam
chroot ./rootfs /bin/chown -v steam /home/steam
chroot ./rootfs /sbin/passwd steam

echo "Done, you may now continue setting it up"
exit 0
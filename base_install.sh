#!/bin/sh
PKG_LIST="zsh parallel git perl gcc make cmake clang lldb llvm strace helix nodejs npm yarnpkg akmod-nvidia nvidia-persistenced xorg-x11-drv-nvidia-cuda akmod-VirtualBox VirtualBox protobuf-compiler podman podman-compose kubernetes jetbrains-mono-fonts alacritty gh btop snapper btrfsmaintenance btrfs-assistant"
sudo dnf copr enable varlad/helix
sudo dnf in $PKG_LIST
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

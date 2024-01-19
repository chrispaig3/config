#!/bin/sh
PKG_LIST="zsh mosh parallel git perl gcc make cmake clang mold lldb llvm strace helix nodejs npm yarnpkg akmod-nvidia nvidia-persistenced xorg-x11-drv-nvidia-cuda akmod-VirtualBox VirtualBox protobuf-compiler podman podman-compose kubernetes jetbrains-mono-fonts alacritty gh btop snapper btrfsmaintenance btrfs-assistant"
sudo dnf copr enable varlad/helix
sudo dnf in $PKG_LIST
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustup default stable
rustup component add rust-analyzer && rustup target add wasm32-unknown-unknown
cargo install cargo-edit cargo-audit cargo-geiger cargo-outdated cargo-deny cargo-info cargo-show-asm cargo-expand cargo-license cargo-release cargo-watch cargo-tarpaulin sccache bindgen-cli hyperfine trunk cross ripgrep eza starship slint-lsp  
cargo install zellij --locked

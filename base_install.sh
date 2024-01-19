#!/bin/sh

# Depends on RPM FUSION

PKG_LIST="zsh mosh parallel git perl opam gcc make cmake clang mold lldb llvm strace helix nodejs npm yarnpkg akmod-nvidia nvidia-persistenced xorg-x11-drv-nvidia-cuda obs-studio blender gamemode godot lutris winetricks akmod-VirtualBox VirtualBox protobuf-compiler podman podman-compose kubernetes jetbrains-mono-fonts alacritty gh btop snapper btrfsmaintenance btrfs-assistant thunderbird mpv ffmpeg"
sudo dnf copr enable varlad/helix
sudo dnf in $PKG_LIST --allowerasing
mv helix $HOME/.config
mv alacritty $HOME/.config
mkdir $HOME/.cache/sccache
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustup default stable
mv cargo/config.toml $HOME/.cargo
rustup component add rust-analyzer && rustup target add wasm32-unknown-unknown
cargo install cargo-edit cargo-audit cargo-geiger cargo-outdated cargo-deny cargo-info cargo-show-asm cargo-expand cargo-license cargo-release cargo-watch cargo-tarpaulin cargo-shuttle sccache bindgen-cli hyperfine trunk cross ripgrep eza starship slint-lsp  
cargo install zellij --locked
cargo install taplo-cli --locked --features lsp
cargo install --git https://github.com/wgsl-analyzer/wgsl-analyzer wgsl_analyzer
sudo npm i -g prettier bash-language-server typescript typescript-language-server yaml-language-server@next @ansible/ansible-language-server @tailwindcss/language-server @astrojs/language-server sql-language-server vscode-langservers-extracted dockerfile-language-server-nodejs
chsh
systemctl reboot -i

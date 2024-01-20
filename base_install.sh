#!/bin/sh

# Note: Depends on RPM FUSION
# A quick and dirty (lazy) install/setup script for fresh Fedora Linux installations 
# Author: V0idMatr1x - Chris 
# Date: 1/19/2024

PKG_LIST="zsh mosh parallel perl python-devel fluidsynth-devel opam gcc make cmake clang mold lldb llvm strace helix nodejs npm yarnpkg akmod-nvidia nvidia-persistenced xorg-x11-drv-nvidia-cuda obs-studio blender gamemode lutris winetricks godot akmod-VirtualBox VirtualBox protobuf-compiler podman podman-compose kubernetes jetbrains-mono-fonts alacritty gh btop snapper btrfsmaintenance btrfs-assistant thunderbird mpv ffmpeg"
sudo dnf copr enable varlad/helix
sudo dnf in $PKG_LIST --allowerasing
git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts/patched-fonts/NerdFontsSymbolsOnly && sudo mv SymbolsNerdFont* /usr/share/fonts; cd $HOME/config
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

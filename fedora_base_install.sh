#!/bin/sh
sudo dnf rm vi kmail konsole
PKG_LIST="gh mullvad-vpn mosh parallel perl sqlite-devel python-devel python-lsp-server apr apr-util libxcrypt-compat gamemode wireshark qbittorrent gcc valgrind make cmake clang doxygen mold lldb llvm strace binwalk nodejs npm yarnpkg akmod-nvidia nvidia-persistenced xorg-x11-drv-nvidia-cuda obs-studio akmod-VirtualBox VirtualBox protobuf-compiler podman podman-compose kubernetes jetbrains-mono-fonts alacritty btop snapper btrfsmaintenance btrfs-assistant thunderbird mpv ffmpeg"
sudo dnf config-manager --add-repo https://repository.mullvad.net/rpm/stable/mullvad.repo
sudo dnf in $PKG_LIST --allowerasing
mv helix $HOME/.config
mv alacritty $HOME/.config
mkdir $HOME/.cache/sccache
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustup default stable
mv cargo/config.toml $HOME/.cargo
rustup component add rust-analyzer && rustup target add wasm32-unknown-unknown
cargo install cargo-edit cargo-audit cargo-geiger cargo-outdated cargo-deny cargo-generate cargo-info cargo-show-asm cargo-expand cargo-about cargo-license cargo-release cargo-watch cargo-tarpaulin cargo-shuttle sccache bpf-linker bindgen-cli hyperfine trunk ripgrep nu slint-lsp  
cargo install cargo-feature --locked
cargo install zellij --locked
cargo install taplo-cli --locked --features lsp
cargo install --git https://github.com/wgsl-analyzer/wgsl-analyzer wgsl_analyzer
sudo npm i -g prettier jsdoc bash-language-server pyright typescript typescript-language-server yaml-language-server@next @ansible/ansible-language-server @tailwindcss/language-server @astrojs/language-server sql-language-server vscode-langservers-extracted dockerfile-language-server-nodejs
systemctl reboot -i

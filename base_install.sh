#!/bin/sh
sudo dnf rm vi kmail konsole
PKG_LIST="zsh gh mullvad-vpn mosh parallel perl sqlite-devel python-devel python-lsp-server qbittorrent opam gcc valgrind go make cmake clang doxygen mold lldb llvm strace binwalk helix nodejs npm yarnpkg akmod-nvidia nvidia-persistenced xorg-x11-drv-nvidia-cuda obs-studio blender akmod-VirtualBox VirtualBox protobuf-compiler podman podman-compose kubernetes jetbrains-mono-fonts alacritty btop snapper btrfsmaintenance btrfs-assistant thunderbird mpv ffmpeg"
sudo dnf copr enable varlad/helix
sudo dnf config-manager --add-repo https://repository.mullvad.net/rpm/stable/mullvad.repo
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
go install golang.org/x/tools/gopls@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install golang.org/x/tools/cmd/goimports@latest
rustup component add rust-analyzer && rustup target add wasm32-unknown-unknown
cargo install cargo-edit cargo-audit cargo-geiger cargo-outdated cargo-deny cargo-generate cargo-info cargo-show-asm cargo-expand cargo-about cargo-license cargo-release cargo-watch cargo-tarpaulin cargo-shuttle scriptisto sccache bpf-linker bindgen-cli hyperfine trunk cross ripgrep eza starship slint-lsp  
cargo install cargo-feature --locked
cargo install zellij --locked
cargo install taplo-cli --locked --features lsp
cargo install --git https://github.com/wgsl-analyzer/wgsl-analyzer wgsl_analyzer
sudo npm i -g prettier jsdoc bash-language-server typescript typescript-language-server yaml-language-server@next @ansible/ansible-language-server @tailwindcss/language-server @astrojs/language-server sql-language-server vscode-langservers-extracted dockerfile-language-server-nodejs
chsh
systemctl reboot -i

# Cargo
export PATH=$HOME/.cargo/bin:$PATH 

# Rust
export RUSTC_WRAPPER=`which sccache`

# Clangd
export PATH=/usr/local/clangd/bin:$PATH

# FASM
export PATH=/usr/local/fasm:$PATH

# Go
export PATH=$HOME/go/bin:$PATH

# Eza
alias ls="eza --icons"

# Zellij
alias z="zellij -l compact"

# Starship Prompt
eval "$(starship init zsh)"

# sccache
export RUSTC_WRAPPER=`which sccache`

# cargo
export PATH=$HOME/.cargo/bin:$PATH

# Eza
alias ls="eza --icons"

# Zellij
alias z="zellij -l compact"

# Starship Prompt
eval "$(starship init zsh)"

# Mold
alias ld=mold

# terraform-ls
export PATH=/usr/local/terraform_ls:$PATH

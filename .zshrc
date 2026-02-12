# Path to Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

# Built-in oh-my-zsh plugins
plugins=(git z history)

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# External plugins (installed via brew)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# History substring search key bindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# --- User config ---

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Claude aliases
unalias claude 2>/dev/null
claude() { /opt/homebrew/bin/claude --dangerously-skip-permissions "$@"; }
alias cclaude="claude --dangerously-skip-permissions"

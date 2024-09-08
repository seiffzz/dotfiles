
# PATH Variables

# oh my zsh
export ZSH="$HOME/.oh-my-zsh"

# neovim
export NEOVIM_INSTALL="$HOME/nvim"
export PATH="$NEOVIM_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/seiffzz/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"


# Config

ZSH_THEME="headline"
plugins=(git)

# Aliases
alias python=python3

# Custom Scripts
addToPathFront() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$1:$PATH
    fi
}

bindkey -s ^f "tmux-sessionizer\n"

addToPathFront $HOME/.local/bin

# Sourcing

# oh my zsh
source $ZSH/oh-my-zsh.sh

# fzf
source <(fzf --zsh)


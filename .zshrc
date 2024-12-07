# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH=$PATH:/home/timmy/.local/bin

eval "$(oh-my-posh init zsh --config /home/timmy/.cache/oh-my-posh/themes/gruvbox.omp.json)"
eval "$(zoxide init zsh)"

# Plugins
plugins=(
  git
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias vim="nvim"
alias la="ls -lah"

# fnm
FNM_PATH="/home/timmyjinks/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/timmyjinks/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/home/timmy/.oh-my-zsh/completions/_bun" ] && source "/home/timmy/.oh-my-zsh/completions/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

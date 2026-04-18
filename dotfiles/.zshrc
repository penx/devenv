export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# zsh plugins for node, nvm, gh?
plugins=(git)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

if [ "$(uname -m)" = "arm64" ]; then
  BREW_PREFIX=/opt/homebrew
elif [ "$(uname -m)" = "x86_64" ]; then
  BREW_PREFIX=/usr/local
else
  BREW_PREFIX=$(brew --prefix)
fi
source $BREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $BREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias 1btn="open --background -a Music.app https://edge.clrmedia.co.uk/obfm_mp3"

#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

typeset -ga sources

sources+="$HOME/.aliases.zsh"

foreach file (`echo $sources`)
    if [[ -a $file ]]; then
        source $file
    fi
end

#export gopath
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Fast switch from vim with ctrl-z
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="dk"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}

zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z
bindkey -v
bindkey -M viins 'jf' vi-cmd-mode
bindkey -M viins 'fj' vi-cmd-mode

[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

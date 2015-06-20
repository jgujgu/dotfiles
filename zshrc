#source ~/antigen.zsh

# Load the oh-my-zsh's library.
#antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
#antigen bundle git
#antigen bundle fcambus/ansiweather

# Syntax highlighting bundle.
#antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
#antigen theme miloshadzic

# Tell antigen that you're done.
#antigen apply

# load zgen
source "${HOME}/zgen/zgen.zsh"

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/command-not-found

    zgen load zsh-users/zsh-syntax-highlighting
    zgen load /path/to/super-secret-private-plugin
    zgen load zsh-users/zsh-completions src

    zgen oh-my-zsh themes/miloshadzic

    zgen save
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
unsetopt beep
source ~/.rvm/scripts/rvm

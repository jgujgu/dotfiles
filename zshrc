source ~/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle fcambus/ansiweather
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme miloshadzic
antigen apply

#source "${HOME}/zgen/zgen.zsh"

#if ! zgen saved; then
    #echo "Creating a zgen save"
    #zgen oh-my-zsh
    #zgen oh-my-zsh plugins/git
    #zgen oh-my-zsh plugins/sudo
    #zgen oh-my-zsh plugins/command-not-found
    #zgen load zsh-users/zsh-syntax-highlighting
    #zgen load /path/to/super-secret-private-plugin
    #zgen load zsh-users/zsh-completions src
    #zgen oh-my-zsh themes/miloshadzic
    #zgen save
#fi

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
export PATH=$HOME/anaconda/bin:$PATH
export PATH=$HOME/torch/install/bin:$PATH
sh /Users/jgujgu/torch/install/bin/torch-activate
MYSQL=/usr/local/mysql/bin
export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
export VISUAL=vim
export EDITOR="$VISUAL"
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

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
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

source ~/antigen.zsh
source ~/.aliases.zsh

antigen use ohmyzsh/ohmyzsh
antigen bundle git
antigen theme miloshadzic
antigen apply

typeset -ga sources

export VISUAL=vim
export EDITOR="$VISUAL"

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

unsetopt beep
unset MAILCHECK
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

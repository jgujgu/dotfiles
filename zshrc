source ~/antigen.zsh
source ~/.aliases.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle fcambus/ansiweather
antigen theme miloshadzic
antigen apply

typeset -ga sources

export PATH=$HOME/anaconda/bin:$PATH
export PATH=$HOME/torch/install/bin:$PATH
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
export VISUAL=vim
export EDITOR="$VISUAL"
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
export CUDA_HOME=/usr/local/cuda
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
export PATH=$CUDA_HOME/bin:$PATH
export GOOGLE_APPLICATION_CREDENTIALS=$HOME/turing/speech-transcription-53fc3d00dafe.json
export GOOGLE_APP_NAME=aerial-reality-135501
export GOOGLE_BUCKET=transcription-test
export PATH=$PATH:$MYSQL

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
source ~/.rvm/scripts/rvm
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
export GOROOT=/usr/local/Cellar/go/1.11.2
export GOPATH=/usr/local/Cellar/go/packages
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# The next line updates PATH for the Google Cloud SDK.
source '/Users/jgujgu/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/jgujgu/google-cloud-sdk/completion.zsh.inc'

export PATH=$HOME/.rvm/gems/ruby-2.4.0/bin:$PATH
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH="$GEM_HOME/bin:$PATH"

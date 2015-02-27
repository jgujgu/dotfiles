alias rzp="source ~/.zprofile"
alias ..="cd .."

#editors
alias v="vim $1"
alias s="sublime $1"
alias a="atom $1"
alias l="ls"

#git
alias gs="git status"
alias gd="git branch -d"
alias gc="git checkout"
alias ga="git add"
alias gm="git merge"
alias gcm="git commit -m"
alias gh="git hist"
alias gpu="git push --set-upstream origin HEAD"
alias gp="git push"
alias clone="git clone"
alias gam="git commit -a -m"
alias gb="git checkout -b"
alias gbr="git branch"
alias gpb="git push --set-upstream origin"
alias gl='git log --topo-order --pretty=format:"${_git_log_medium_format}"'
alias glb='git log --topo-order --pretty=format:"${_git_log_brief_format}"'

# Log
zstyle -s ':prezto:module:git:log:medium' format '_git_log_medium_format' \
|| _git_log_medium_format='%C(bold)Commit:%C(reset) %C(green)%H%C(red)%d%n%C(bold)Author:%C(reset) %C(cyan)%an <%ae>%n%C(bold)Date:%C(reset) %C(blue)%ai (%ar)%C(reset)%n%+B'
zstyle -s ':prezto:module:git:log:oneline' format '_git_log_oneline_format' \
|| _git_log_oneline_format='%C(green)%h%C(reset) %s%C(red)%d%C(reset)%n'
zstyle -s ':prezto:module:git:log:brief' format '_git_log_brief_format' \
|| _git_log_brief_format='%C(green)%h%C(reset) %s%n%C(blue)(%ar by %an)%C(red)%d%C(reset)%n'
# Status
zstyle -s ':prezto:module:git:status:ignore' submodules '_git_status_ignore_submodules' \
|| _git_status_ignore_submodules='none'

#tmux
alias tn="tmux new -s"
alias ta="tmux attach -t"
alias ts="tmux switch -t"
alias tsess="tmux list-sessions"
alias td="tmux detach"
alias tks="tmux kill-server"
alias x="exit"

#ruby/rails
alias r="ruby"
alias ra="rails"
alias rs=" ra s"
alias rk="rake"
alias sg="shotgun"
alias rc="rails c"
alias dbm="bundle exec rake db:migrate"
alias dbset="bundle exec rake db:setup"
alias be="bundle exec"
alias routes="rake routes"

#go
alias g="go run *"

#other
alias m="mongo"
alias be="bundle exec"
alias es="exercism submit"
alias ef="exercism fetch"
alias ct="cd ~/turing"
alias ctr="cd ~/turing/rs"
alias er="cd ~/exercism/ruby"
alias ej="cd ~/exercism/javascript"
alias mongofind="ps -Aef | grep mongo"
alias findp="lsof -i"
alias eniac="java -jar eniac.jar"
alias t="tree"
alias b="bundle"
alias c="clear;ls"
alias archflags='ARCHFLAGS="-arch x86_64" bundle install'
alias cd='cs'

#alias file
alias ale="v ~/.dotfiles/aliases.zsh"
alias vimrc="v ~/.dotfiles/vimrc"
alias dot="~/.dotfiles"
alias snip='v ~/.dotfiles/vim/bundle/vim-snippets/UltiSnips'


# ls automatically after cd
function cs() {
  if [ $# -eq 0 ]; then
    cd && ls
  else
    cd "$*" && ls
  fi
}


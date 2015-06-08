#reset
alias rzp="source ~/.zprofile"

#convenience
alias ..="cd .."
alias desk="$HOME/Desktop"
alias pin="$HOME/Desktop/pinyintype"
alias down="$HOME/Desktop/down"
alias tu="$HOME//Turing"
alias rls="$HOME/Turing/rs/rails"
alias res="redis-server"
alias red="redis-cli"
alias di="$HOME/Turing/rs/rails/diffepedia"
#test change

#keyboard on off
alias off="sudo kextunload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext"
alias on="sudo kextload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext"

#editors
alias v="vim $1"
alias v.="vim ."
alias n="nvim $1"
alias s="sublime $1"
alias a="atom $1"
alias l="ls -A"

#firefox
alias ff="open -a Firefox"

#git
alias git="hub"
alias gs="git status"
alias gd="git branch -d"
alias gc="git checkout"
alias ga="git add"
alias gm="git merge"
alias gmm="git merge master"
alias gcm="git commit -m"
alias gh="git hist"
alias gpu="git push --set-upstream origin HEAD"
alias gp="git push"
alias gpu="git pull"
alias clone="git clone"
alias gam="git commit -a -m"
alias gcb="git checkout -b"
alias gb="git branch"
alias gr="git rebase"
alias gpb="git push --set-upstream origin"
alias gl="git log --all --graph --decorate" # detailed log
alias glog="git log --graph --pretty=format:'%Cred%h%Creset \
%an: %s - %Creset %C(yellow)%d%Creset \
%Cgreen(%cr)%Creset' --abbrev-commit --date=relative" # pretty log
alias gph="git push heroku master"

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
alias nw='tmux new-window -c "$PWD"'

#ruby/rails
alias r="ruby"
alias i="irb"
alias ra="rails"
alias rs="ra s"
alias rk="rake"
alias sg="shotgun"
alias rc="rails c"
alias dbm="bundle exec rake db:migrate"
alias dbset="bundle exec rake db:setup"
alias dbr="bundle exec rake db:reset db:seed"
alias be="bundle exec"
alias routes="rake routes"
alias bi="bundle install"
alias ri="rails g rspec:install"
alias u="unicorn"
alias in="sudo gem install"

#nodejs
alias ns="npm start"
alias ni="npm install"

#volt
alias vs="volt server"
alias vc="volt console"

#go
alias g="go run *"
alias gr="go run"
alias ig="go-eval"
alias gt="go test -v"

#other
alias m="mongo"
alias be="bundle exec"
alias es="exercism submit"
alias ef="exercism fetch"
alias er="cd $HOME/exercism/ruby"
alias ej="cd $HOME/exercism/javascript"
alias eg="cd $HOME/exercism/go"
alias mongofind="ps -Aef | grep mongo"
alias findp="lsof -i"
alias eniac="java -jar eniac.jar"
alias t="tree"
alias b="bundle"
alias c="clear;ls"
alias archflags='ARCHFLAGS="-arch x86_64" bundle install'

#alias file
alias ale="v $HOME/dotfiles/aliases.zsh"
alias vimrc="v $HOME/dotfiles/vimrc"
alias dot="cd $HOME/dotfiles"
alias snip="v $HOME/dotfiles/vim/bundle/vim-snippets/UltiSnips"
alias snips="$HOME/dotfiles/vim/bundle/vim-snippets/UltiSnips"

# command line search google and wikipedia
function goo() {
local s="$_"
local query=
case "$1" in
    '')   ;;
    that) query="search?q=${s//[[:space:]]/+}" ;;
    *)    s="$*"; query="search?q=${s//[[:space:]]/+}" ;;
esac
open -a Firefox "http://www.google.com/${query}"
}

function wi() {
local s="$_"
local query=
case "$1" in
    '')   ;;
    that) query="${s//[[:space:]]/_}" ;;
    *)    s="$*"; query="${s//[[:space:]]/_}" ;;
esac
open -a Firefox "https://en.wikipedia.org/wiki/${query}"
}

function killag {
kill $(ps aux | ag $1 | ag -v "grep" | awk '{print $2}')
}

# Create a new directory and enter it
function md() {
mkdir -p "$@" && cd "$@"
}

function rails_pg() {
rails new $1 -T -B --skip-turbolinks --database=postgresql
cd $1
add_rails_gems
bundle
rails generate rspec:install
git init
git add .
git commit -m "initial commit"
vim .;
}

function add_rails_gems() {

echo "
group :test, :development do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'pry-rails'
  gem 'awesome_print'
  gem 'irbtools'
  gem 'better_errors'
end
" >> Gemfile;

}

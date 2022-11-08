#convenience
alias desk="$HOME/Desktop"
alias pin="$HOME/Desktop/pinyintype"
alias down="$HOME/Desktop/down"
alias tu="$HOME//Turing"
alias rls="$HOME/Turing/rails/"
alias home="$HOME/Turing/homebound/"
alias res="redis-server"
alias red="redis-cli"
alias di="$HOME/Turing/rs/rails/diffepedia"
alias sphero="ls /dev | ag Sphero"
alias spx="$HOME/Turing/js/sphero_ex"
alias w="ansiweather"
alias sb="brightness"
alias md="mkdir"
alias idea="v ~/Downloads/idea.txt"
alias sw="sass --watch styles.scss:styles.css"
alias bl="$HOME/turing/rails/jgu2160.github.io"
alias blo="vim $HOME/blog/jgu_blog/_drafts/new.markdown"
alias js="jekyll serve"
alias o="octave"
alias mat="$HOME/Documents/MATLAB"
alias tinder="bash ~/Documents/ml/tinderbox/dist/tinderbox-1.1-SNAPSHOT/bin/tinderbox"
alias d162='eval "$(docker-machine env docker162)"'
alias docker_delete='docker rmi $(docker images -q -a)'
alias sqmailer='bundle exec sidekiq -q default -q mailers'
alias dog="ssh 'jgu@104.236.182.224'"
alias dol="ssh 'jgu@165.227.12.232'"
alias dob="ssh 'root@138.68.249.27'"
alias lake="ssh 'jgu@104.236.183.161'"
alias fsh="figaro heroku:set -e production"
alias hs="cd $HOME/hubstaff"
alias l="exa -lahF"
alias ls="exa"

#python
alias p3="python3"
#alias ps="python3 manage.py runserver"
alias pmake="python3 manage.py makemigrations"
alias pmig="python3 manage.py migrate"

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
alias vi="v"

#firefox
alias ff="open -a 'Firefox 2'"

#git
alias git="hub"
alias gs="git status"
alias gd="git branch -d"
alias GD="git branch -D"
alias gc="git checkout  "
alias ga="git add"
alias gaa="git add ."
alias gm="git merge"
alias gmm="git merge master"
alias gcm="git commit -m  "
alias gh="git hist"
alias gpu="git push --set-upstream origin HEAD"
alias gp="git push"
alias gpu="git pull"
alias clone="git clone"
alias gam="git commit -a -m "
alias gcb="git checkout -b "
alias gb="git branch"
alias gr="git rebase"
alias grid="git rebase -i development"
alias grim="git rebase -i master"
alias grima="git rebase -i main"
alias gpb="git push --set-upstream origin HEAD"
alias gl="git log --all --graph --decorate" # detailed log
alias glog="git log --graph --pretty=format:'%Cred%h%Creset \
  %an: %s - %Creset %C(yellow)%d%Creset \
  %Cgreen(%cr)%Creset' --abbrev-commit --date=relative" # pretty log
alias gph="git push heroku master"
alias gdo="git push origin --delete"
alias grc="git rebase --continue"
alias gri="git rebase -i"
alias gsta="git stash"
alias gco="git commit"

#utopia
alias uvds='utopia --verbose deploy status'
alias uds='utopia deploy status'
alias wuds="watch -c -d -n 5 'utopia deploy status'"
alias wups="watch -c -d -n 5 'utopia promote status'"
alias udd='utopia deploy -b development && wuds'

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

#python
alias p="python"

#ruby/rails
alias r="ruby"
alias i="irb"
alias ra="rails"
alias rs="ra s -p 3001"
alias rs2="ra s -p 3002"
alias rs3="ra s -p 3003"
alias rs4="ra s -p 3004"
alias rs5="ra s -p 3005"
alias hserver="ra s -p 3001"
alias htalent="ra s -p 3002"
alias htasks="ra s -p 3003"
alias hmarketing="ra s -p 3004"
alias haccount="ra s -p 3005"
alias rk="rake"
alias sg="shotgun"
alias rc="rails c"
alias dbc="bundle exec rake db:create"
alias dbm="bundle exec rake db:migrate"
alias dbset="bundle exec rake db:setup"
alias dbr="bundle exec rake db:reset db:seed"
alias explode="rake db:drop db:create db:reset db:seed"
alias be="bundle exec"
alias routes="rake routes"
alias bi="bundle install"
alias ri="rails g rspec:install"
alias u="unicorn -c config/unicorn.rb"
alias in="sudo gem install"
alias loveme="rails s -p 3000 -b lvh.me"
alias lm="rails s -p 3000 -b lvh.me"
alias pack="bin/webpack-dev-server"
alias zs="zat server"

#yarn
alias yt="yarn test"
alias yi="yarn install"
alias yrt="yarn run test:unit"
alias yrb="yarn run build"

#nodejs
alias ns="npm start"
alias ni="npm install"
alias cg="npm run graphql-codegen"
alias rf="yarn lint:fix"
alias rt="yarn test"
alias sd="yarn start-dev"
alias sq="yarn start-qa"

#gumroad
alias fs="foreman start -f Procfile.dev"

#volt
alias vs="volt server"
alias vc="volt console"

#go
#alias g="go run *"
#alias gr="go run"
#alias ig="go-eval"
#alias gt="go test -v"

#other
alias m="mongo"
alias be="bundle exec"
alias es="exercism submit"
alias ef="exercism fetch"
alias er="cd $HOME/exercism/ruby"
alias ep="cd $HOME/exercism/python"
alias ej="cd $HOME/exercism/javascript"
alias eg="cd $HOME/exercism/go"
alias mongofind="ps -Aef | grep mongo"
alias findp="lsof -i"
alias eniac="java -jar eniac.jar"
alias t="tree"
alias b="bundle"
alias c="clear;ls"
alias archflags='ARCHFLAGS="-arch x86_64" bundle install'
alias startngrok='ngrok http --host-header=tasks.hubstaff.test localhost:3003'

#alias file
alias ale="v $HOME/dotfiles/aliases.zsh"
alias tx="v $HOME/dotfiles/tmux.conf"
alias vimrc="v $HOME/dotfiles/vimrc"
alias zshrc="v $HOME/dotfiles/zshrc"
alias dot="cd $HOME/dotfiles"
alias snip="v $HOME/dotfiles/vim/bundle/vim-snippets/UltiSnips"
alias snips="$HOME/dotfiles/vim/bundle/vim-snippets/UltiSnips"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# command line search google and wikipedia
function goo() {
local s="$_"
local query=
case "$1" in
  '')   ;;
  that) query="search?q=${s//[[:space:]]/+}" ;;
  *)    s="$*"; query="search?q=${s//[[:space:]]/+}" ;;
esac
open -a 'Firefox 2' "http://www.google.com/${query}"
}

function wi() {
local s="$_"
local query=
case "$1" in
  '')   ;;
  that) query="${s//[[:space:]]/_}" ;;
  *)    s="$*"; query="${s//[[:space:]]/_}" ;;
esac
open -a "Firefox 2" "https://en.wikipedia.org/wiki/${query}"
}

function killag {
kill $(ps aux | ag $1 | ag -v "grep" | awk '{print $2}')
}

# cd to dotfile repo and open in editor
function dotf() {
cd ~/.dotfiles && vim .
}

# create a new directory and enter it
function mkd() {
if [ $# -lt 1 ]; then
  echo "Missing argument";
  return 1;
fi

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
group :development, :test do
gem 'rspec-rails'
gem 'capybara'
gem 'pry-rails'
gem 'better_errors'
end
" >> Gemfile;

}

export _JAVA_OPTIONS="-XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC -Xms2G -Xmx4G -Xss1024m -XX:MaxPermSize=4G"

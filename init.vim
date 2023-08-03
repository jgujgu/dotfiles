call plug#begin('~/.vim/plugged')
" -------------------------------------

" various color schemes (neovim default is 'dark'; I like 'slate' with dark background)
" http://vimcolors.com/
Plug 'freeo/vim-kalisi'
Plug 'w0ng/vim-hybrid'
Plug 'bitterjug/vim-colors-bitterjug'
Plug 'jonathanfilip/vim-lucius'
Plug 'crusoexia/vim-monokai'
Plug 'jacoborus/tender.vim'
Plug 'pbrisbin/vim-colors-off'
Plug 'muellan/am-colors'
Plug 'blueshirts/darcula'

" NERD Tree - tree explorer
" https://github.com/scrooloose/nerdtree
" http://usevim.com/2012/07/18/nerdtree/
" (loaded on first invocation of the command)
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" nerdtree-git-plugin - show git status in NERD Tree
" https://github.com/Xuyuanp/nerdtree-git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'

" vim-airline
" Enhanced statusline
" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'
" https://github.com/vim-airline/vim-airline-themes
Plug 'vim-airline/vim-airline-themes'

" Save/restore session support
" https://github.com/tpope/vim-obsession
" tmux users also see: https://github.com/tmux-plugins/tmux-resurrect/blob/master/docs/restoring_vim_and_neovim_sessions.md
Plug 'tpope/vim-obsession'

" Excellent git wrapper
" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" Enforce editor settings
" https://github.com/editorconfig/editorconfig-vim
Plug 'editorconfig/editorconfig-vim'

" Make vim a first class Go development environment
" https://github.com/fatih/vim-go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" vim-misc
" https://github.com/xolox/vim-misc
Plug 'xolox/vim-misc'

" Markdown support
" https://github.com/plasticboy/vim-markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Nice interaction with tmux
" https://github.com/benmills/vimux
Plug 'benmills/vimux'

" Fuzzy file, buffer, mru, tag, etc finder
" ctrlp.vim
" https://github.com/ctrlpvim/ctrlp.vim
Plug 'ctrlpvim/ctrlp.vim'

" A better grep (source code aware)
" You must install ack on your machine for the plugin to work
" sudo apt-get install ack-grep, brew install ack, etc.
Plug 'mileszs/ack.vim'

" OMG - insanely awesome fuzzy search and blazing fast grep
" https://github.com/junegunn/fzf (parent project)
" https://github.com/junegunn/fzf.vim (more extensive wrapper)
" https://medium.com/@crashybang/supercharge-vim-with-fzf-and-ripgrep-d4661fc853d2#.rkhrm332m
" To update: :PlugUpdate fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" indentline
" https://github.com/Yggdroot/indentLine
Plug 'Yggdroot/indentLine'

Plug 'Raimondi/delimitMate'
Plug 'pangloss/vim-javascript'
Plug 'airblade/vim-gitgutter'
Plug 'wesQ3/vim-windowswap'
Plug 'danro/rename.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'leafgarland/typescript-vim'
Plug 'ervandew/supertab'
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" -------------------------------------
" Add plugins to &runtimepath
call plug#end()
" =====================================
"
"
" ================ Leader and other mappings =======================
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :wq<CR>
nnoremap <Leader>1 :q!<CR>
nnoremap <Leader>e :e<Space>
nnoremap <Leader>v :vsp<CR>
nnoremap <Leader>s :sp<CR>
nnoremap <Leader>- :PlugInstall<CR>
nnoremap <Leader>4 :Rename<Space>
nnoremap <Leader>c :!go test<CR>
nnoremap <Leader>f :%s/
nnoremap <Leader>d :!mkdir<Space>
nnoremap <Leader>ct :ColorToggle<CR>
nnoremap <Leader>i mzgg=G`z<CR>
nnoremap <BS> <C-o>
nmap <Leader><Leader> V
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>
inoremap jf <esc>
inoremap fj <esc>
map <C-i> :NERDTreeToggle<CR>
let g:NERDTreeNodeDelimiter = "\u00a0"

set number " line numbers
set noswapfile
set autowrite
set softtabstop=2
set tabstop=2 shiftwidth=2
set modifiable
set ignorecase
set ic
set rnu
set expandtab " use spaces, not tabs (optional)
set backspace=indent,eol,start " backspace through everything in insert mode
set shortmess+=I
set redrawtime=10000
set noshowmode
set laststatus=10
set scrolloff=4 " adds top/bottom buffer between cursor and window

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

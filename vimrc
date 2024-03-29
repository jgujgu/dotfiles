" Vundle initialize
" set the runtime path ro include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-bundler'
Plugin 'chriskempson/base16-vim'
Plugin 'myusuf3/numbers.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'rking/ag.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'chrisbra/Colorizer'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'fullybaked/toggle-numbers.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'terryma/vim-expand-region'
Plugin 'skalnik/vim-vroom'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ervandew/sgmlendtag'
Plugin 'pangloss/vim-javascript'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-ragtag'
Plugin 'airblade/vim-gitgutter'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'othree/html5.vim'
Plugin 'sjl/gundo.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'wesQ3/vim-windowswap'
Plugin 'danro/rename.vim'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-surround'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'scrooloose/syntastic'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'digitaltoad/vim-jade'
Plugin 'slim-template/vim-slim.git'
Plugin 'posva/vim-vue'
Plugin 'w0rp/ale'
Plugin 'leafgarland/typescript-vim'
Plugin 'jparise/vim-graphql'
Plugin 'sheerun/vim-polyglot'
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

call vundle#end()

" ================ General Settings =======================
" Turn off vi compatibility
set nocompatible
set smartindent
set autoindent
set ff=unix
set binary
set noeol
setlocal foldmethod=indent
autocmd BufWinEnter * let &foldlevel = max(map(range(1, line('$')), 'foldlevel(v:val)'))
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set nofoldenable "dont fold by default

"No sounds
set visualbell

" Set 80 character ruler and colors
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn cterm=NONE ctermbg=0"
set noswapfile
set autowrite
set softtabstop=2
set tabstop=2 shiftwidth=2
set modifiable
set ignorecase
set ic
set rnu
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
set scrolloff=4 " adds top/bottom buffer between cursor and window
set number " line numbers
set showcmd " display incomplete commands
set autoread " Auto-reload buffers when file changed on disk
set expandtab " use spaces, not tabs (optional)
set backspace=indent,eol,start " backspace through everything in insert mode
set shortmess+=I
set redrawtime=10000

"hide very last line because of redundancy
set noshowmode
set laststatus=10

" Allow JSX in normal JS files
let g:jsx_ext_required = 0

" ================ Leader and other mappings =======================
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :wq<CR>
nnoremap <Leader>1 :q!<CR>
nnoremap <Leader>e :e<Space>
nnoremap <Leader>v :vsp<CR>
nnoremap <Leader>s :sp<CR>
nnoremap <Leader>- :PluginInstall<CR>
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

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

"ruby debug abbrev
iabbr bb byebug
iabbr hh #hello
map <Leader>bb orequire 'byebug'; byebug<esc>:w<cr>
map <Leader>yy orequire 'pry'; binding.pry<esc>:w<cr>
map <Leader>ap ogem 'irbtools'<esc>ogem 'awesome_print'<esc>:w<cr>
map <Leader>con oconsole.log("")<esc>

" Easy copy pasting
map <Leader>m :.!pbcopy<CR>
map <Leader>p :r !pbpaste<CR>

"Hit v to select one character
"Hit v again to expand selection to word
"Hit v again to expand to paragraph
"Hit <C-v> go back to previous selection if I went too far
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

"change multicursor defaults
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-,>'
let g:multi_cursor_skip_key='<C-.>'
let g:multi_cursor_quit_key='<Esc>'

"Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" Running jasmine-node tests from Vim with Vimux
map <Leader>j :w %<cr>:call VimuxRunCommand("clear; jasmine-node --verbose " . bufname("%"))<cr>

"Gundo toggle
nnoremap <Leader>5 :GundoToggle<CR>

"window swap
nnoremap <silent> <leader>2 :call WindowSwap#EasyWindowSwap()<CR>

" RSpec.vim mapping
map <Leader>a :call RunAllSpecs()<CR>

" ================ Completion =======================
" Stuff to ignore when tab completing
let g:neocomplete#enable_at_startup = 1
set wildmode=list:longest
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=node_modules/**
set wildignore+=tmp/**

" ================ Status bar configuration =======================
" Lightline config
let g:lightline = {
      \ 'colorscheme': 'selenized_white',
      \ 'active': {
      \ 'left': [ [ 'mode', ], [ 'fugitive', 'readonly', 'filename' ] ],
      \ 'right': [ [ 'syntastic', 'column', 'lineinfo' ], [ 'filetype' ] ]
      \ },
      \ 'component': {
      \ 'column': '%c'
      \ },
      \ 'component_function': {
      \ 'fugitive': 'MyFugitive',
      \ 'readonly': 'MyReadonly',
      \ 'filetype': 'MyFiletype',
      \ 'lineinfo': 'MyLineInfo'
      \ },
      \ 'component_expand': {
      \ 'syntastic': 'SyntasticStatuslineFlag',
      \ },
      \ 'component_type': {
      \ 'syntastic': 'error',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '| ', 'right': '| ' }
      \ }


" Lightline functions
function! MyReadonly()
  if &readonly
    return "🔒"
  else
    return ""
  endif
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFugitive()
  if exists('*fugitive#head')
    let _ = fugitive#head()
    return strlen(_) ? '🍆 '._ : ''
    return winwidth(0) > 70 ? (strlen(_) ? '💥 '._ : '') : ''
  endif
  return ''
endfunction

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"Syntastic checkers
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jsxhint']

"Error symbols
let g:syntastic_error_symbol = "✗"
let g:syntastic_style_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_style_warning_symbol = "⚠"

"Syntastic Checkers

function! MyLineInfo()
  return '🌞 ' . line('.') . '/' . line('$')
  return winwidth(0) > 70 ? '🌞 ' . line('.') . '/' . line('$') : ''
endfunction

augroup AutoSyntastic
  autocmd!
  autocmd BufWritePost *.rb,*.js,*.css,*.sh,*.go call s:syntastic()
augroup END

function! s:syntastic()
  SyntasticCheck
  call lightline#update()
endfunction

" ================ Misc =======================
"autosave in tmux
let g:tmux_navigator_save_on_switch = 1

" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" ================ Delete whitespace function =======================
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")

  "associate the .es6 file extension with JavaScript
  autocmd BufRead,BufNewFile *.es6 setfiletype javascript

  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces() " strip trailing whitespace on save

" Detect file type for indentation below
:filetype indent on
" " Use 4 space indentation on all files
":autocmd FileType * set ai sw=4 sts=4 et
" Use 2 space indentation on Ruby and YAML files
:autocmd FileType ruby,eruby,yaml,javascript,css,scss,html set ai sw=2 sts=2 et

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" ================ Persistent Undo for undo plugin ==================
" Keep undo history across sessions, by storing in file.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif
" Enable status bar always
set laststatus=2

" ================ Goyo-limelight commands ==================
function! s:goyo_enter()
  silent !tmux set status off
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
  " ...
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  " ...
endfunction

autocmd! User GoyoEnter
autocmd! User GoyoLeave
autocmd  User GoyoEnter nested call <SID>goyo_enter()
autocmd  User GoyoLeave nested call <SID>goyo_leave()
nnoremap <Leader>g :Goyo<CR>

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

" Rainbow
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:rbpt_colorpairs = [
      \ ['brown',       'RoyalBlue3'],
      \ ['Darkblue',    'SeaGreen3'],
      \ ['darkgray',    'DarkOrchid3'],
      \ ['darkgreen',   'firebrick3'],
      \ ['darkcyan',    'RoyalBlue3'],
      \ ['darkred',     'SeaGreen3'],
      \ ['darkmagenta', 'DarkOrchid3'],
      \ ['brown',       'firebrick3'],
      \ ['gray',        'RoyalBlue3'],
      \ ['black',       'SeaGreen3'],
      \ ['darkmagenta', 'DarkOrchid3'],
      \ ['Darkblue',    'firebrick3'],
      \ ['darkgreen',   'RoyalBlue3'],
      \ ['darkcyan',    'SeaGreen3'],
      \ ['darkred',     'DarkOrchid3'],
      \ ['red',         'firebrick3'],
      \ ]

"speed up ctrlp
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

let g:mustache_abbreviations = 1

"nerdcommenter for vue files
let g:ft = ''
function! NERDCommenter_before()
  if &ft == 'vue'
    let g:ft = 'vue'
    let stack = synstack(line('.'), col('.'))
    if len(stack) > 0
      let syn = synIDattr((stack)[0], 'name')
      if len(syn) > 0
        exe 'setf ' . substitute(tolower(syn), '^vue_', '', '')
      endif
    endif
  endif
endfunction
function! NERDCommenter_after()
  if g:ft == 'vue'
    setf vue
    let g:ft = ''
  endif
endfunction

"rubocop config
let g:vimrubocop_config = '/Users/jgujgu/hubstaff/hubstaff-server/.rubocop_todo.yml'
let g:vimrubocop_keymap = 0
nmap <Leader>c :RuboCop<CR>

"ale config
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_fixers = ['eslint', 'rubocop']
nnoremap <Leader>a :ALEFix<CR>

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>""

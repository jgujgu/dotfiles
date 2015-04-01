" Vundle initialize
" set the runtime path ro include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-bundler'
Plugin 'Shougo/neocomplete.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'myusuf3/numbers.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-sensible'
Plugin 'Raimondi/delimitMate'
Plugin 'chrisbra/Colorizer'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'fullybaked/toggle-numbers.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'terryma/vim-expand-region'
Bundle 'skalnik/vim-vroom'
Bundle 'christoomey/vim-tmux-navigator'
Plugin 'ervandew/sgmlendtag'
Plugin 'pangloss/vim-javascript'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-ragtag'
Plugin 'scrooloose/syntastic'
Plugin 'ngmy/vim-rubocop'
Plugin 'airblade/vim-gitgutter'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'othree/html5.vim'
Plugin 'sjl/gundo.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'wesQ3/vim-windowswap'
Plugin 'danro/rename.vim'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'thoughtbot/vim-rspec'

call vundle#end()

" ================ General Settings =======================
" Turn off vi compatibility
set nocompatible
set smartindent
set autoindent
set ff=unix
setlocal foldmethod=indent
autocmd BufWinEnter * let &foldlevel = max(map(range(1, line('$')), 'foldlevel(v:val)'))
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set nofoldenable "dont fold by default

" Highlight current line and colors
set cursorline

"No sounds
set visualbell

" Set 80 character ruler and colors
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn cterm=NONE ctermbg=0"
:colorscheme base16-brewer
set noswapfile
set autowrite
set softtabstop=2
set tabstop=2 shiftwidth=2 expandtab
set background=dark
set modifiable
set ignorecase
set ic
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
set scrolloff=4 " adds top/bottom buffer between cursor and window
set number " line numbers
set showcmd " display incomplete commands
set autoread " Auto-reload buffers when file changed on disk
set expandtab " use spaces, not tabs (optional)
set backspace=indent,eol,start " backspace through everything in insert mode

"hide very last line because of redundancy
set noshowmode
set laststatus=10

" ================ Leader and other mappings =======================
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :wq<CR>
nnoremap <Leader>1 :q!<CR>
nnoremap <Leader>h :!open -a firefox http://localhost:3000/
nnoremap <Leader>e :e<Space>
nnoremap <Leader>v :vsp<CR>
nnoremap <Leader>s :sp<CR>
nnoremap <Leader>4 :Rename<Space>
nnoremap <Leader>f :%s/
nnoremap <Leader>d :!mkdir<Space>
nmap <Leader><Leader> V
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap jf <esc>
inoremap fj <esc>
map <C-i> :NERDTreeToggle<CR>

"ruby debug abbrev
iabbr bb byebug
map <Leader>bb orequire 'byebug'; byebug<esc>:w<cr>
map <Leader>yy orequire 'pry'; binding.pry<esc>:w<cr>
map <Leader>ap ogem 'irbtools'<esc>ogem 'awesome_print'<esc>:w<cr>

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

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)"
            \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)"
            \: "\<TAB>"
" Running jasmine-node tests from Vim with Vimux
map <Leader>j :w %<cr>:call VimuxRunCommand("clear; jasmine-node --verbose " . bufname("%"))<cr>

"Gundo toggle
nnoremap <Leader>5 :GundoToggle<CR>

"window swap
nnoremap <silent> <leader>2 :call WindowSwap#EasyWindowSwap()<CR>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

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
            \ 'colorscheme': 'solarized',
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
            \ 'lineinfo': 'MyLineInfo'
            \ },
            \ 'component_expand': {
            \ 'syntastic': 'SyntasticStatuslineFlag',
            \ },
            \ 'component_type': {
            \ 'syntastic': 'error',
            \ },
            \ 'separator': { 'left': '', 'right': '' },
            \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
            \ }

" Lightline functions
function! MyReadonly()
    if &readonly
        return "🔒"
    else
        return ""
    endif
endfunction

function! MyFugitive()
    if exists('*fugitive#head')
        let _ = fugitive#head()
        return strlen(_) ? '🍆 '._ : ''
    endif
    return ''
endfunction

" Error symbols
let g:syntastic_error_symbol = "✗"
let g:syntastic_style_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_style_warning_symbol = "⚠"

function! MyLineInfo()
    return '🌞 ' . line('.') . '/' . line('$')
endfunction

augroup AutoSyntastic
    autocmd!
    autocmd BufWritePost *.rb,*.js,*.css,*.sh call s:syntastic()
augroup END

function! s:syntastic()
    SyntasticCheck
    call lightline#update()
endfunction

"syntastic and rubocop stuff
let g:vimrubocop_keymap = 0
nmap <Leader>c :RuboCop<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

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
:autocmd FileType * set ai sw=4 sts=4 et
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

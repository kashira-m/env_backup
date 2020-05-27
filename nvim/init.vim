set number
set title
set showmatch

set ignorecase
set smartcase
set wrapscan
set incsearch
set inccommand=split

set mouse=a

set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab
set shiftround

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" ===========
" Plugins
" ===========

augroup PluginInstall
    autocmd!
    autocmd VimEnter * if dein#check_install() | call dein#install() | endif
augroup END
command! -nargs=0 PluginUpdate call dein#update()


let s:dein_dir = expand('$HOME/dein')

if &runtimepath !~# '/dein.vim'
    let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo.dein.vim'

    if !isdirectory(s:dein_repo_dir)
        execute printf('!git clone %s %s', 'https://github.com/Shougo/dein.vim', s:dein_repo_dir)
    endif

    execute 'set runtimepath^=' . s:dein_repo_dir
endif

let g:dein#install_pax_processed = 48

let s:toml_file = '~/.config/nvim/dein.toml'
let s:toml_lazy_file = '~/.config/nvim/dein_lazy.toml'
if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    call dein#load_toml(s:toml_file, {'lazy': 0})
    call dein#load_toml(s:toml_lazy_file, {'lazy': 1})
    call dein#add('morhetz/gruvbox')
    "()を補間する。
    call dein#add('Townk/vim-autoclose')
    "() 色付け:
    call dein#add('itchyny/lightline.vim')
    "インデントの色付け
    call dein#add('Yggdroot/indentLine')
    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

" other key bindings
nnoremap <silent><C-b> :T cargo build<CR>

" === gruvbox ===
colorscheme gruvbox

set background=dark
set t_Co=256

let g:ligthline = { 'colorscheme': 'gruvbox' }

"### lightlineの設定
set laststatus=2
" #####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る

filetype plugin indent on
syntax enable



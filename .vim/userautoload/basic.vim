syntax on

" auto indent
set autoindent

" auto load file
set autoread

" set backspace
set backspace=indent,eol,start

" share clipboard
set clipboard=unnamed,autoselect

" charater encode
set encoding=utf-8

" show line number
set number

set colorcolumn=80

set confirm

set cursorline

set expandtab

set hidden

set history=1000

set hlsearch

set laststatus=2

set list

set listchars=eol:¬

set mouse=a

set nobackup
set nowritebackup

set noswapfile

" カーソル行の上下へのオフセットを設定する
set scrolloff=4
"
" インデントでずれる幅を設定する
set shiftwidth=2

" 入力中のコマンドを表示する
set showcmd

" 対応するカッコを強調表示する
set showmatch

" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase

" 改行入力行の末尾にあわせてインデントを増減する
set smartindent

" コンテキストに応じたタブの処理を行なう
set smarttab

" タブやバックスペースで処理するスペースの数を設定する
set softtabstop=2

" 新しいウィンドウを下/右に開く
set splitbelow
set splitright

" タブ幅を設定する
set tabstop=2

" 編集中のファイル名を表示する
set title

" ビープを無効にする
set visualbell t_vb=

" 行頭・行末の左右移動で行を移動する
set whichwrap=b,s,h,l,<,>,[,]

" コマンドラインモードでの補完を有効にする
set wildmenu

" コマンドラインモードでの補完方法を設定する
set wildmode=list:longest,full

" 行を折り返す
set wrap

" 検索時に最後まで移動したら最初に戻る
set wrapscan

" カーソル形状変形
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"


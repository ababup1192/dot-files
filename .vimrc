set runtimepath+=~/.vim/
runtime! userautoload/*.vim

"dein Scripts-----------------------------

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/Users/abab/.vim/dein/repos/github.com/Shougo/dein.vim/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('/Users/abab/.vim/dein/repos/github.com/Shougo/dein.vim'))

" Let dein manage dein
" Required:
" call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('scrooloose/syntastic')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neocomplcache')
call dein#add('leafgarland/typescript-vim')

call dein#add('digitaltoad/vim-pug')
call dein#add('fatih/vim-go')
call dein#add('derekwyatt/vim-scala')
call dein#add('stephpy/vim-yaml')
call dein#add('ngmy/vim-rubocop')
call dein#add('scrooloose/syntastic')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------



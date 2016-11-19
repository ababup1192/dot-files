let [plugins, ftplugin] = dein#load_cache_raw(['/Users/abab/.vimrc', '/Users/abab/.dein.toml'], 1)
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/abab/.vim/dein'
let g:dein#_runtime_path = '/Users/abab/.vim/dein/.dein'
let &runtimepath = '/Users/abab/.vim/dein/.dein,/Users/abab/.vim/dein/repos/github.com/Shougo/dein.vim/.dein,/Users/abab/.vim/dein/repos/github.com/Shougo/dein.vim/repos/github.com/Shougo/dein.vim,/Users/abab/.vim,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim74,/usr/local/share/vim/vimfiles/after,/Users/abab/.vim/after,/Users/abab/.vim/dein/repos/github.com/Shougo/dein.vim/.dein/after,/Users/abab/.vim/dein/.dein/after'

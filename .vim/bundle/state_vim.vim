if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/vialrogo/.vimrc'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/vialrogo/.vim/bundle'
let g:dein#_runtime_path = '/home/vialrogo/.vim/bundle/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/home/vialrogo/.vim/bundle/.cache/.vimrc'
<<<<<<< HEAD
let &runtimepath = '/home/vialrogo/.vim,/home/vialrogo/.vim/bundle/.cache/.vimrc/.dein,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/home/vialrogo/.vim/bundle/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/home/vialrogo/.vim/after,/home/vialrogo/.vim/bundle/repos/github.com/Shougo/dein.vim'
=======
let &runtimepath = '/home/vialrogo/.vim,/var/lib/vim/addons,/home/vialrogo/.vim/bundle/.cache/.vimrc/.dein,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/home/vialrogo/.vim/bundle/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,/home/vialrogo/.vim/after,/home/vialrogo/.vim/bundle/repos/github.com/Shougo/dein.vim'
filetype off
>>>>>>> 08357e6fe782498619f564b2376143a93343b8c6

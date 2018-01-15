set rtp+=~/.vim/bundle/vundle/
set number
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

syntax enable
set background=dark
colorscheme solarized

let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s)\zs\.\S\+'


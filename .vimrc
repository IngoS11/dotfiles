set rtp+=~/.vim/bundle/vundle/
set title
set nocompatible
set titleold=
set nomore
set autoread
set autowrite
set number
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set hlsearch
set incsearch
set ignorecase
set smartcase
set listchars=tab:>~,nbsp:_,trail:.
set list
set viminfo=h,'500,<10000,s1000,/1000,:1000
set backspace=indent,eol,start
set fileformats=unix,mac,dos

" serch through every subdirectory  provides tab-completion for all
" file-related tasks
set path+=**

" display all matching file when we tab complete
set wildmenu

" Visual block mode is much more useful than Visual mode (swap the two)
nnoremap v <C-V>
nnoremap <C-V> v

vnoremap v <C-V>
vnoremap <C-V> v

" square up visual selections
set virtualedit=block

syntax enable
filetype plugin on
set background=dark
colorscheme solarized

let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s)\zs\.\S\+'

" mark the 81 column in diffrent color for code wrapping
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

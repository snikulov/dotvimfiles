set nocompatible

set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
set winminheight=0
set winheight=50
set winminwidth=1
set winwidth=1
set equalalways

set background=dark

if has('win32') || has('win64')
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

filetype plugin on

if has("gui_running")
    set guioptions-=T
    set guifont=Consolas:h14:cRUSSIAN
    colorscheme desert 
    set lines=43 columns=240
else
    colorscheme desert 
end

" Folding
syntax on
set foldmethod=syntax
set number


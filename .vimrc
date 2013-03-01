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
set laststatus=2

"set encoding=utf-8
set background=dark
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

"match ColorColumn /\s+$/
match ColorColumn /\s\+$\| \+\ze\t/

autocmd FileType c,cpp,java autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd BufNewFile,BufRead *.cpp set formatprg=astyle\ -s4pA1
autocmd BufNewFile,BufRead *.c set formatprg=astyle\ -s4pA1
autocmd BufNewFile,BufRead *.cxx set formatprg=astyle\ -s4pA1
autocmd BufNewFile,BufRead *.h set formatprg=astyle\ -s4pA1
autocmd BufNewFile,BufRead *.hpp set formatprg=astyle\ -s4pA1

if has('win32') || has('win64')
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

execute pathogen#infect()

filetype plugin on

if has("gui_running")
    set guioptions-=T
    set guioptions-=m
    set guifont=Consolas:h14:cRUSSIAN
    colorscheme molokai 
    set lines=43 columns=240
else
    colorscheme darkblue
end

syntax on
set hlsearch
" Folding
"set foldmethod=syntax
set number


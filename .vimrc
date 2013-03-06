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
set fileencoding=utf-8

set shm=atI
set encoding=utf-8
set background=dark
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

syntax on
set incsearch
set hlsearch
" Folding
"set foldmethod=syntax
set number

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
    set langmenu=en_US.UTF-8
"    language en
    let $LANG = 'en_US'
endif

execute pathogen#infect()
execute pathogen#helptags()

filetype plugin on

if has("gui_running")
    set guioptions-=T
    set guioptions-=m
    set guifont=Meslo_LG_S:h18:cRUSSIAN
    colorscheme molokai
    set lines=43 columns=240
else
    colorscheme darkblue
end

" tags
set tags+=~/tags/boost.tags

" fake cscope
set csprg=gtags-cscope
cs add GTAGS

" gtags mapping
:map <C-]> :Gtags<CR><CR>
:map <C-\> :Gtags -r<CR><CR>
:map <F10> :cclose<CR>
:map <F11> :cp<CR>
:map <F12> :cn<CR>

set nocompatible

if has('win32') || has('win64')
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
    set langmenu=en_US.UTF-8
"    language en
    let $LANG = 'en_US'
endif

execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
" set winminheight=0
" set winheight=50
" set winminwidth=1
" set winwidth=1
" set equalalways
set laststatus=2
set fileencoding=utf-8
set hidden

set shm=atI
set encoding=utf-8
set background=dark
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

set hlsearch
" Folding
"set foldmethod=syntax
set number

autocmd FileType c,cpp,java autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd BufNewFile,BufRead *.cpp set formatprg=astyle\ -s4pA1
autocmd BufNewFile,BufRead *.c set formatprg=astyle\ -s4pA1
autocmd BufNewFile,BufRead *.cxx set formatprg=astyle\ -s4pA1
autocmd BufNewFile,BufRead *.h set formatprg=astyle\ -s4pA1
autocmd BufNewFile,BufRead *.hpp set formatprg=astyle\ -s4pA1


if has("gui_running")
    set guioptions-=T
    set guioptions-=m
    set guifont=Meslo_LG_S:h18:cRUSSIAN
    colorscheme molokai
    set lines=43 columns=240
    hi TrailSpace guifg=#FF0000 guibg=#FF0000
    match TrailSpace /\s\+$\| \+\ze\t/
else
    colorscheme darkblue
    match ColorColumn /\s+$/
end

" tags
" set tags+=~/tags/boost.tags

" fake cscope
"let GtagsCscope_Auto_Load = 1
"let GtagsCscope_Auto_Map = 1
"let GtagsCscope_Quiet = 1
"set cscopetag

" gtags mapping
:map <C-]> :Gtags<CR><CR>
:map <C-\> :Gtags -r<CR><CR>
:map <F10> :cclose<CR>
:map <F11> :cp<CR>
:map <F12> :cn<CR>

nnoremap <F8> :NERDTreeToggle %:p:h<CR>
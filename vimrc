set number                  " Displaying line "
set autoindent              " Auto indent "
set smartindent             " Smart indent "
set cindent                 " C-style indent "
set tabstop=4
set shiftwidth=4
set hlsearch
set background=dark
set nocompatible
set showmatch
set title
set wmnu
set wrap
set formatoptions+=r

" Display white space "
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Remove white space when the file is saved "
autocmd FileType c,cpp,java,php,javascript autocmd BufWritePre <buffer> :%s/\s\+$//e

syntax on
filetype indent on


highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

autocmd FileType c,cpp,java,php,javascript autocmd BufWritePre <buffer> :%s/\s\+$//e

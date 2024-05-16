syntax on

" Disable matching parenthesis highlighting
let g:loaded_matchparen=1

" Colors at /usr/share/vim/vim90/colors
colorscheme desert
highlight LineNr ctermfg=grey

set number
set ruler
set cursorline
set showmode
set ignorecase
set nobackup
set noswapfile
set belloff=all

" tags is the default file
" set tags=tags

" Highlight search
" set hlsearch

set expandtab
set tabstop=4
set shiftwidth=4

" Deactivate macros and use q to exit
map q :q<CR>

" Search a text within src and include folder
" j = do not jump to the first match
com! -nargs=1 F lvimgrep /<args>/j src/*.c include/*.h

" Open the quickfix window directly after searching 
augroup mysearch
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l*    lwindow
augroup END

" Map intro to execute a command with the contents of the current line
" (Exit vi environment)
"map <CR> :exec '!./program '.shellescape(getline('.'))<CR>

" Map intro to execute a command with the contents of the current line
" (Don't exit vi environment)
"map <CR> :call system('./program '.shellescape(getline('.')))<CR>

" Note --------------------------------------
" On Debian based systems you may need:
" sudo apt install vim-gui-common vim-runtime
" for tags and other stuff ...
" -------------------------------------------


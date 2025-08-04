syntax on

" Disable matching parenthesis highlighting
let g:loaded_matchparen=1
" Compound literals in some expressions are falsely highlighted as errors
let c_no_curly_error=1

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

autocmd FileType html,css,javascript,json setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType make setlocal noexpandtab tabstop=8 shiftwidth=8

" Deactivate macros and use q to exit
" The autocmd part prevents a delay when pressing q in netrw
autocmd FileType netrw setlocal timeoutlen=0
map q :q<CR>

" Explore with netrw
map z :Ex<CR>

" Go to middle of line
map m :call cursor(0, len(getline('.'))/2)<CR>

" Copy the current selection to the clipboard ,y
let mapleader = ","
vnoremap <Leader>y :silent w !pbcopy<CR>

" Search a text within src and include folder
" j = do not jump to the first match
command! -nargs=1 F lvimgrep /<args>/j src/*.c include/*.h

" Open the quickfix window directly after searching 
augroup mysearch
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l*    lwindow
augroup END

" Configure 'Enter' key to do search and then 'CTRL-w + w' in quickfix
" in order to (re)set the focus on the quickfix window
autocmd FileType qf nnoremap <buffer> <CR> <CR> <C-w>w

" Map intro to execute a command with the contents of the current line
" (Exit vi environment)
"map <CR> :exec '!./program '.shellescape(getline('.'))<CR>

" Note --------------------------------------
" On Debian based systems you may need:
" sudo apt install vim-gui-common vim-runtime
" for tags and other stuff ...
" -------------------------------------------


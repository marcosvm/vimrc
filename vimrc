set nocompatible
"filetype off

let g:go_fmt_command = "goimports"
"set termguicolors

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
call plug#end()

filetype plugin indent on  
set list listchars=tab:\ \ ,trail:.
set number
set numberwidth=5
set ruler
set showcmd
set hlsearch
set cmdheight=2
set laststatus=2
set expandtab
set visualbell

syn off
map ; :

:colorscheme gruvbox

"
" remove trailing spaces when saving
au BufWritePre *.rb :%s/\s\+$//e
au BufWritePre *.yml :%s/\s\+$//e
au BufWritePre *.js :%s/\s\+$//e
au BufWritePre *.erb :%s/\s\+$//e
au BufWritePre *.java :%s/\s\+$//e

" settings for ruby files
au Filetype ruby setlocal ts=2 sts=2 sw=2 et

let mapleader=","
nnoremap <CR> :nohlsearch<cr>
imap jj <Esc>
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>s :split %%
map <leader>v :vnew %%
map ,a ggVG
map <C-e> :b#<CR>
" puts the caller
nnoremap <leader>wtf oputs "#" * 90<c-m>puts caller<c-m>puts "#" * 90<esc>

"hi Search ctermbg=yellow ctermfg=black
"hi LineNr ctermfg=yellow
"hi StatusLine ctermfg=Blue ctermbg=Yellow
set guifont=Menlo:h18

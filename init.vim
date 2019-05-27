
"""""""""""""""""""""""""""""""""""""
" Learnings
"""""""""""""""""""""""""""""""""""""






"""""""""""""""""""""""""""""""""""""
" Configuration Section
"""""""""""""""""""""""""""""""""""""

" Show linenumbers
set number
set relativenumber
set ruler

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
set laststatus=2




" Enable highlighting of the current line
set cursorline

" SPLITS "

" We can use different key mappings for easy navigation between splits to save a keystroke. So instead of ctrl-w then j, it’s just ctrl-j

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open new split panes to right and bottom, which feels more natural than Vim’s default:

set splitbelow
set splitright

" TERMINAL MODE "
if has ('nvim')
    tnoremap <Esc> <C-\><C-n>
endif


nnoremap v.rc :vsp ~/.config/nvim/init.vim<Enter>




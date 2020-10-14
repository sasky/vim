" set leader key
let g:mapleader = "\<Space>"

            

"syntax enable                           " Enables syntax highlighing
"set hidden                              " Required to keep multiple buffers open multiple buffers
"set nowrap                              " Display long lines as just one line
set whichwrap+=<,>,h,l,[,]              " Stops Vim from not moving to the previous/next line after reaching first/last character in the line.
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set showtabline=2                       " Always show tabs
set ruler              			" Show the cursor position all the time
set cmdheight=1                         " More space for displaying messages
set signcolumn=yes			" Always show the signcolumn, otherwise it would shift the text each time
set wildmenu  				" Better command-line completion
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 2 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=1                        " Always display the status line
set number                              " Line numbers
set relativenumber			" line numbers relative to the current line
set ignorecase smartcase 		" Use case insensitive search, except when using capital letters
"set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set noswapfile				" I save all the time, those are annoying and unnecessary...
set nostartofline			" Stop certain movements from always going to the first character of a line.
					" While this behaviour deviates from that of Vi, it does what most users
					" coming from other editors would expect.
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set shortmess+=c			" Don't pass messages to |ins-completion-menu|.

"may speed improvments? (inside Tmux)
"set nocompatible
"set ttyfast
"set lazyredraw

set clipboard=unnamed			" Copy paste between vim and everything else
"set autochdir                          " Your working directory will always be the same as your working directory
let loaded_matchparen = 1		" disable highlighting of parans ( it's confusing me in insert mode) 
" Automatically detect file types. "
filetype plugin indent on	

" auto source when writing to init.vm alternatively you can run :source $MYVIMRC
au! BufWritePost $MYVIMRC source %      


" You can't stop me
cmap w!! w !sudo tee %

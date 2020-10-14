" Things to sort out 
"
" In the fzf overlay menu , ctrl-j is not working as down, because it's set to
" change windows, how to stop this
"
" Need some word wrapping I think
"
"
"
" get FZF to search by file type 
"
"
" get more familiar with the delete yank plugin
"
"
"
" Find that plugin that lets you jump and edit a text object that is in pairs
"
"
"
" In Book a way todo maths in the command line?
"
" 
"
"
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/mappings.vim
source $HOME/.config/nvim/vim-plug/which-key.vim



" Themes 
source $HOME/.config/nvim/themes/vim-material.vim
"source $HOME/.config/nvim/themes/oceanic-material.vim
"source $HOME/.config/nvim/themes/vim-hybrid-material.vim
source $HOME/.config/nvim/themes/airline.vim

    
" Plugin Configs

source $HOME/.config/nvim/vim-plug/coc.vim
source $HOME/.config/nvim/vim-plug/fzf.vim
source $HOME/.config/nvim/vim-plug/vim-smooth-scroll.vim
source $HOME/.config/nvim/vim-plug/commentry.vim
source $HOME/.config/nvim/vim-plug/start-screen.vim


"---------------------------------------------------------
"------|| Core Vim Tips
"---------------------------------------------------------
"
"Use range command to select text above or below
"For example :+8,+12t.
"copy's lines 8 to 12 relative to current line, and pastes them on this line
":81,91t.<enter>
" or yank them like this
" :-81,-91y<enter>


" <ctrl-p> and <ctrl-j> are alternatives for the up/down keys


"---------------------------------------------------------
"------|| GETTING AROUND THE FILE 
"---------------------------------------------------------
 
" <C-o>     back jump
" <C-i>     forward jump (may not work because tab is remapped)"
"
" Marks are cool 
" mm to mark a place, `m to get back to it 

" Marcos are cool
" q{char} to start recording so qq
" then q to stop
"
" To play it @{char} or @@ to play the last recorded marco
"
"---------------------------------------------------------
"------|| EDITING IN THE FILE 
"---------------------------------------------------------

" Compound commands
" C     c$  change to the end of the line
" s     cl
" S     ^C  deletes the current line and enters insert mode
" I     ^i
" A     $a
" o     A<cr> inset on next line
" O     ko insert on prev line
"
" Act,                      Repeat,      Reserve 
"
" f{char}/t{char}           ;            .
" /pattern                  n            N
" :s/target/replace         &            u
" 
" @:         repeat X command
" *          search for the word under the cursor (second fav command)

" find and replace in the whole file
":%s/search/replace/g

"NORMAL MODE
"
" Counts, you and increase and decrease a number by hovering over it and ..
" <C-a>     increase number on or first match form cursor
" <C-x>     decrease number on or first match form cursor 
" these can also have a number before them, like this 15<C-a> 
"

"---------------------------------------------------------
"------|| CUT COPY PASTE FIND REPLACE
"---------------------------------------------------------


" Registers 
" "*            yanks to system clip board
"for example "*yy is copy line to clipboard
""*p pastes it form clipboard
" "_ for the delete forever registor
"  so "_daw to not put the word into the registor

"type :reg to see what is stored in each registor, it is a history, to access
"type "{char}p

" When the auto complete  is open, close it with <C-x> then <C-l> will show a
" list of line wise completions
"
" Keep pressing <Ctrl-X> then <Ctrl-l> to copy multiple linesE




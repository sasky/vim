"Fzf Settings
"
" https://bluz71.github.io/2018/12/04/fuzzy-finding-in-vim-with-fzf.html

"<C-V> : Open the selected file in a vertical split
" <ctrl-p> and <ctrl-j> are alternatives for the up/down keys
" Find files with fzf
nmap <leader>p :Files<CR>


let g:fzf_layout = { 'window': { 'width': 0.95, 'height': 0.95 } }

nmap // :BLines<CR>
nmap ?? :Rg<CR>

if has("nvim")
    " Escape inside a FZF terminal window should exit the terminal window
    " rather than going into the terminal's normal mode.
    autocmd FileType fzf tnoremap <buffer> <Esc> <Esc>
endif
" :Rg ( which uses ripgrep)
" :Rg searchTerm directory/structure
" :Rg serchTerm -g '*.php'
" : -g stands for glob and filters the results, lets study this more
" :https://github.com/BurntSushi/ripgrep/blob/master/GUIDE.md
"  cclose to close the quickfix buffer
" Might need to make a shortcut for cclose
"
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)



" This overrides the :Rg search provided by FZF so I can search in .gitignore
" directories and add directories to search after the term 
"command! -bang -nargs=* Rg
 " \ call fzf#vim#grep(
 " \   'rg --column --line-number --no-heading --color=always --smart-case --no-ignore '.<q-args>, 1,
 " \   fzf#vim#with_preview(), <bang>0)
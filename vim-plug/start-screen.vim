let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Project '. getcwd()] },
          \ ]
let g:startify_bookmarks = [
            \ { 'b': '~/brain.md' },
            \ { 't': '~/todoToday.md' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'a': '~/.config/alacritty/alacritty.yml' },
            \ { 'z': '~/.zshrc' },
            \ { 's': '~/Sites/sasky/brain/spelling.md' },
            \ { 'v': '/usr/local/etc/httpd/extra/httpd-vhosts.conf' },
            \ ]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 0
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

" Working with Sessions
":SLoad       load a session
":SSave[!]    save a sessiopn
":SDelete[!]  delete a session
":SClose      close a session



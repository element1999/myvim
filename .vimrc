let mapleader = "\\"
set nu
map <F2> <ESC>:q!<CR>
nmap qq  <ESC>:q!<CR>
map <F3> <ESC>:w<CR>
map ss  <ESC>:w<CR>
colorscheme koehler
au GUIENTER * simalt ~x
set guifont=Courier\ New\ 16
set backup
set backupext=.bak
set autoread
"""""""""""""""""""""""""""""""""""""
set statusline=%F%m%r\ \|\ %Y,%{&fileencoding}\ \|%=\ %l/%L,%c\ \|\ %f
                            " ..............
                            " %f    ......
                            " %F    ........
                            " %m    ........
                            " %r    ........
                            " %Y    ......
                            " %{&fileformat}
                            "       ......
                            " %{&fileencoding}
                            "       ....
                            " %b    ........ ASCII ..
                            " %B    .............
                            " %l    ......
                            " %c    ......
                            " %V    ........ (...........)
                            " %p    ...........
                            " %%    ...
                            " %L    .......
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Alt+....Table.....
nmap 11 <ESC>:b1<CR>
nmap 22  <ESC>:b2<CR>
nmap 33  <ESC>:b3<CR>
nmap 44  <ESC>:b4<CR>
nmap 55  <ESC>:b5<CR>
nmap 66  <ESC>:b6<CR>
nmap 77  <ESC>:b7<CR>
nmap 88  <ESC>:b8<CR>
nmap 99  <ESC>:b9<CR>
"#nmap  5gt
"#nmap  6gt
"#nmap  7gt
"#nmap  8gt
"#nmap  9gt
"#nmap  :tablast<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" vim-scripts repos

Bundle 'genutils'
Bundle 'surround.vim'    
" vwS",ds“.cs"'
Bundle 'EasyMotion'
Bundle 'AutoComplPop'
"Bundle 'taglist.vim'
Bundle 'The-NERD-Commenter'
Bundle 'vim-multiple-cursors'
"Bundle 'SuperTab-continued'
Bundle 'minibufexplorerpp'

	
"Bundle 'bash-support.vim'
"Bundle 'perl-support.vim'
filetype plugin indent on 

let g:EasyMotion_leader_key = '<Leader>'

set showcmd
"test
"b.... .....tab ..shift+tab 
"{{{
"ctrl + c ........
function! Smart_TabComplete()
  let line = getline('.')                    " curline
  let substr = strpart(line, -1, col('.')+1) " from start to cursor
  let substr = matchstr(substr, "[^ \t]*$")  " word till cursor
  if (strlen(substr)==0)                     " nothing to match on empty string
     return "\<tab>"
  endif
  let has_period = match(substr, '\.') != -1 " position of period, if any
  let has_slash = match(substr, '\/') != -1  " position of slash, if any
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"                    " existing text matching
  elseif ( has_slash )
    return "\<C-X>\<C-F>"                    " file matching
  else
    return "\<C-X>\<C-O>"                    " plugin matching
  endif
endfunction
"inoremap <tab> <c-r>=Smart_TabComplete()<CR>
"}}}
"tab.... .....tab ..shift+tab 


colorscheme darkblue
set hlsearch
set ignorecase
map <F4> <ESC>:nohlsearch<CR>
nmap , <Leader>f

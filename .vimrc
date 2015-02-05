let mapleader = "\\"
set nu
nmap , <Leader>
map <F2> <ESC>:q!<CR>
map <F5> <ESC>G:e<CR>
map <F8> <ESC>:GrepBuffer<CR>
map nn <ESC>:cn<CR>
map pp <ESC>:cp<CR>
map <F9> <ESC>:cclose<CR>
map <F10> <ESC>:copen<CR>
map topo <ESC>:!topo %<CR>
map topo2 <ESC>:!topo2 %<CR>
map <F12> <ESC>Gdgg<ESC>:read !inclog<CR><ESC>:w<CR>gg
nmap qq  <ESC>:q!<CR>
map <F3> <ESC>:wq
map ss  <ESC>:w<CR>
map rr  <ESC>:!ruby %<CR>
map aa <ESC>yy3j0pkJx2kAMR
map bb <ESC>ggC
colorscheme koehler
au GUIENTER * simalt ~x
set guifont=Courier\ New\ 16
set backup
set backupext=.bak
set autoread

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
Bundle 'grep.vim'
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

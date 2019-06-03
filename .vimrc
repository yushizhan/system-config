syntax on
filetype plugin on
filetype indent on

set ai
"set backup
"set backupdir=~/.vimbackup
set nocompatible
set foldmethod=indent
set foldlevel=20
set backspace=2
set mouse=a
set noswapfile
set t_Co=256
colorscheme peaksea
set guifont=Monaco:h13
"colorscheme desert
"colorscheme github
set nu

" 去掉括号匹配显示
let loaded_matchparen = 1
let g:molokai_original=1
set tabstop=4
set expandtab
set shiftwidth=4
set smarttab
set softtabstop=4
set listchars=tab:>-
set lcs=trail:-
set list

" Set tab for html
autocmd FileType html :setlocal sw=2 ts=2 sts=2
" expand tab to spaces
set expandtab

set autoindent
set smartindent
set cindent

set hlsearch 
set incsearch

"set completeopt
set completeopt=longest,menu
let OmniCpp_ShowPrototypeInAbbr=1
set ignorecase
let g:acp_completeOption = '.,w,b,u,t,i'

set tags+=.tags

"let &termencoding=&fileencoding
" auto encoding detecting
"set fileencodings=utf-8,cp936,big5,gb18030,ucs
"set encoding=utf-9

" hilight characters over 80 columns
" match DiffAdd '\%>80v.*'

"pair config
"noremap ( ()<ESC>i
"inoremap { {}<ESC>i
"inoremap [ []<ESC>i

" arrow map
imap  <C-l> <Right>
imap  <C-h> <Left>
map <C-n> \be

map <LEADER>q :qa!<CR>
map <LEADER>g :CommandTBuffer<CR>
" F2 to save files
map <F2> :w!<CR>

" jump to previous building error
map <F3> :cp<CR>

" jump to next building error
map <F4> :cn<CR>


map <F6> :Tlist<CR>
vmap sy :w !pbcopy<CR><CR>
nmap syy :.w !pbcopy<CR><CR>
nmap sp :r !pbpaste<CR><CR>

" F11 toggle paste mode
set pastetoggle=<F9>

"set guioptions-=m
set guioptions-=T
set guioptions-=r
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

""" Plugins管理
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugin 'valloric/youcompleteme'
Plugin 'AutoComplPop'
call vundle#end()


""" Plugin配置
let Tlist_Show_One_File = 1 
let Tlist_Exit_OnlyWindow = 1 
let Tlist_Use_Right_Window = 1

map <LEADER>t :NERDTreeToggle<CR>
noremap <C-x><C-f> :Ex<CR>

" produce tags
" map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <F10> :!ctags --python-kinds=-i -o `pwd`/.tags  -R `pwd` <CR>

let g:vim_markdown_folding_disabled=1

" let g:acp_enableAtStartup = 0

" 禁止使用jedi
"let g:jedi#auto_initialization = 0
" 禁止弹出上面的提示, 如果需要文档，可以按K
" autocmd FileType python setlocal completeopt-=preview
" let g:jedi#popup_select_first=1

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

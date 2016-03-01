runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
Helptags
"my set
filetype indent on 
set tags=./tags
set history=400
set nocompatible
set number

set shiftwidth=4
set tabstop=4
set expandtab
set showmatch
set nobackup
syntax on

"set search method
set ignorecase smartcase 
set hlsearch

"windows set

"set fileencoding
"set fileencoding=ucs-bom,utf-8,gbk
"set termencoding=utf-8
"set encoding=utf-8
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim7.1在windows下的编码设置。By Huadong.Liu
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
set fileencoding=chinese
else
set fileencoding=utf-8
endif
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"解决consle输出乱码
language messages zh_CN.utf-8

""""""""""""""""""""""""""""""
" Tag list (ctags)
""""""""""""""""""""""""""""""
if has("win32")                 "设定windows系统中ctags程序的位置
let Tlist_Ctags_Cmd = 'D:\ctags58\ctags.exe'
elseif has("linux")              "设定linux系统中ctags程序的位置
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
endif
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口 
set tags=tags
set autochdir
map <silent> <F9> :TlistToggle<cr>


  " Set nice colors
  " background for normal text is light grey
  " Text below the last line is darker grey
  " Cursor is green
  " Constants are not underlined but have a slightly lighter background
  highlight Normal guibg=grey90
  highlight Cursor guibg=Green guifg=NONE
  highlight NonText guibg=grey80
  highlight Constant gui=NONE guibg=grey95
  highlight Special gui=NONE guibg=grey95
  highlight Comment term=bold ctermfg=6
  highlight Search NONE
  highlight Search term=reverse cterm=reverse

"set mouse=a
colorscheme solarized



syntax on
colorscheme jellybeans
set nu
set autoindent
"use tab as indent
set softtabstop=8
set shiftwidth=8
set encoding=utf-8
set fileencodings=utf-8,gb18030,gbk
set tw=140
"set autochdir
set ruler
"set backspace=indent,eol,start
"au InsertLeave *.* write

"Taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Use_Right_Window=1
let Tlist_Show_Menu=1
let Tlist_Auto_Open=1
"winManager
"let g:winManagerWindowLayout='NERDTree|TagList,BufExplorer'
"let g:winManagerWindowLayout='TagList|FileExplorer,BufExplorer'
"let g:AutoOpenWinManager=1
"let g:winManagerWidth=20
"map wm : WMToggle<CR>
"map <C-w><C-b> : BottomExplorerWindow<cr>
"map <C-w><C-f> : FirstExplorerWindow<cr>

"miniBuffer
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1

"autoCompletion
filetype plugin indent on
set completeopt=longest,menu

"grep
nmap <silent><F3> : Grep<CR>
"map key
nnoremap <silent><F5> : NERDTreeToggle<cr>
"nmap <c-w><c-f> : FirstExplorerWindow<cr>
"nmap <c-w><c-b> : BottomExplorerWindow<cr>
"nmap <c-w><c-t> : WMToggle<cr> 
map <F6> : wqa!<cr>

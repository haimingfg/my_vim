syntax on
"colorscheme jellybeans
let g:solarized_termcolors=256
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized
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

"CTags
let zzcTagsPath=$HOME."/site/zuzuche/run"
let stagsPath = $HOME."/site/stags/zzc"
function CreateTags(tagsPath, sourcePath)
	let l:cmd=':!ctags -f '.a:tagsPath.' --languages=php -R '.a:sourcePath.'&'	
	"let l:cmd=':!ctags -R '.a:sourcePath
	exe l:cmd
	"exe l:cmd
	"let g:tags=a:tagsPath
	exe "set tags=".a:tagsPath
endfunction
map ct :call CreateTags(stagsPath, zzcTagsPath)<CR>
"Taglist
"let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Use_Right_Window=1
let Tlist_Show_Menu=1
"let Tlist_Auto_Open=1
map <F9> : Tlist<cr>
"winManager
let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout='NERDTree|TagList'
function! NERDTree_Start()
	exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
	return 1
endfunction
"let g:winManagerWindowLayout='TagList|FileExplorer,BufExplorer'
"let g:AutoOpenWinManager=1
"let g:winManagerWidth=20
map wm : WMToggle<CR>
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
"nmap <silent><F3> : Grep<CR>
"map key
nnoremap <silent><F5> : NERDTreeToggle<cr>
"nmap <c-w><c-f> : FirstExplorerWindow<cr>
"nmap <c-w><c-b> : BottomExplorerWindow<cr>
"nmap <c-w><c-t> : WMToggle<cr> 
"map <F6> : wqa!<cr>

"设置foldmethod
"
"1. manual //手工定义折叠
"2. indent //用缩进表示折叠
"3. expr　 //用表达式来定义折叠
"4. syntax //用语法高亮来定义折叠
"5. diff   //对没有更改的文本进行折叠
"6. marker //用标志折叠
"indent折叠命令
"zc 折叠
"zC 对所在范围内所有嵌套的折叠点进行折叠
"zo 展开折叠
"zO 对所在范围内所有嵌套的折叠点展开
"[z 到当前打开的折叠的开始处。
"]z 到当前打开的折叠的末尾处。
"zj 向下移动。到达下一个折叠的开始处。关闭的折叠也被计入。
"zk 向上移动到前一折叠的结束处。关闭的折叠也被计入。
"set foldmethod=expr
"set foldexpr=getline(v:lnum)='function\s+[_\w]+\s?\{.+\}'
map <F7> zc
map <F8> zo

"""""""""""""""""""""作着注释""""""""""""""""""""
function PhpAH(author, copyright)
	call append(line("."),"/**")
	call append(line(".")+1," *")
	call append(line(".")+2," *")
	call append(line(".")+3," * ----------------------------------")
	if a:copyright != ""
		call append(line(".")+4," * @copyright: ".a:copyright)
		call append(line(".")+5," * @author: ".a:author)
		call append(line(".")+6," */")
	else
		call append(line(".")+4," * @author: ".a:author)
		call append(line(".")+5," */")
	endif
	endfunction

nmap <C-x><F9> <ESC>:call PhpAH("Haiming", "http://www.zuzuche.com")<cr>

"powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'

"miniBufExplorer
"let g:miniBufExplMapWindowNavVim=1
"let g:miniBufExplMapWindowNavArrows=1 
"let g:miniBufExplMapCTabSwitchBufs=1 
"let g:miniBufExplModSelTarget=1 
"let g:miniBufExplMoreThanOne=0

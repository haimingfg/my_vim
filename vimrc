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

"����foldmethod
"
"1. manual //�ֹ������۵�
"2. indent //��������ʾ�۵�
"3. expr�� //�ñ��ʽ�������۵�
"4. syntax //���﷨�����������۵�
"5. diff   //��û�и��ĵ��ı������۵�
"6. marker //�ñ�־�۵�
"indent�۵�����
"zc �۵�
"zC �����ڷ�Χ������Ƕ�׵��۵�������۵�
"zo չ���۵�
"zO �����ڷ�Χ������Ƕ�׵��۵���չ��
"[z ����ǰ�򿪵��۵��Ŀ�ʼ����
"]z ����ǰ�򿪵��۵���ĩβ����
"zj �����ƶ���������һ���۵��Ŀ�ʼ�����رյ��۵�Ҳ�����롣
"zk �����ƶ���ǰһ�۵��Ľ��������رյ��۵�Ҳ�����롣
"set foldmethod=expr
"set foldexpr=getline(v:lnum)='function\s+[_\w]+\s?\{.+\}'
map <F7> zc
map <F8> zo

"""""""""""""""""""""����ע��""""""""""""""""""""
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

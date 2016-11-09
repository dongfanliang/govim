"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"                  for pathogen.vim
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()
syntax on
""""""""""""""""""""""""""""""""""""""""
"
"             paste
"
""""""""""""""""""""""""""""""""""""""""
" for insert mode
set pastetoggle=<f2>

" 高亮显示当前行/列
set cursorline

" 禁止折行
set nowrap

" indent
set autoindent
"set foldmethod=indent
"zi 打开关闭折叠
"zv 查看此行
"zm 关闭折叠
"zM 关闭所有
"zr 打开
"zR 打开所有
"zc 折叠当前行
"zo 打开当前折叠
"zd 删除折叠
"zD 删除所有折叠

" tasklist setting
let g:tlTokenList = ["FIXME", "TODO", "HACK", "NOTE", "WARN", "MODIFY"]
nnoremap ,t :TaskList<CR>

""""""""""""""""""""""""""""""""""""""""
"
""       tComment
"
"""""""""""""""""""""""""""""""""""""""""
" Use Ctrl-c to comment and uncomment, cool
map <c-c> gcc

""""""""""""""""""""""""""""""""""""""""
"
"             filetype
"
""""""""""""""""""""""""""""""""""""""""
" Enable filetype plugin
filetype plugin on
filetype indent on
" set filetype=py
set ttimeoutlen=50
set guifont=DejaVu\ Sans\ Mono\ 9
set autoread

autocmd FileType help set ma 
autocmd FileType help set noreadonly
autocmd BufWritePost ~/.vim/doc/* :helptags ~/.vim/doc
autocmd FileType python setlocal et sta sw=4 sts=4

" mouse
if has('mouse')
	set mouse=a
endif

""""""""""""""""""""""""""""""""""""""""
"
"             buffers
"
""""""""""""""""""""""""""""""""""""""""
" in order to switch between buffers
" with unsaved change 
set hidden
map <Tab> :bn<CR>
map ,b :bp<cr>
map ,d :bd<cr>


""""""""""""""""""""""""""""""""""""""""
"
""             Search
"
"""""""""""""""""""""""""""""""""""""""""
" ic also has effect on dictionary settings
 set ic
"set hlsearch
set incsearch
set smartcase
set ignorecase

""""""""""""""""""""""""""""""""""""""""
"
"             NERDtree
"
""""""""""""""""""""""""""""""""""""""""
map ,n :NERDTreeToggle<CR>
let NERDTreeChDirMode=2  "选中root即设置为当前目录
let NERDTreeShowBookmarks=1 "显示书签
let NERDTreeMinimalUI=1 "不显示帮助面板
let NERDTreeDirArrows=1 "目录箭头 1 显示箭头  0传统+-|号


""""""""""""""""""""""""""""""""""""""""
"
"             quit quickly
"
""""""""""""""""""""""""""""""""""""""""
map ,f :q!<CR>
map ,w :w!<CR>
""""""""""""""""""""""""""""""
" => Golang section
""""""""""""""""""""""""""""""
autocmd BufRead,BufNewFile *.go set filetype=go

""""""""""""""""""""""""""""""""""""""""
"
"             vimrc editing 
"
""""""""""""""""""""""""""""""""""""""""
" I need a fake ~/.vimrc: runtime vimrc
" http://www.derekwyatt.org/vim/the-vimrc-file/my-vimrc-file/
map ,e :e ~/.vim/vimrc<CR>
" When vimrc is edited, reload it
" copied from http://amix.dk/vim/vimrc.html
autocmd! bufwritepost vimrc source ~/.vim/vimrc


""""""""""""""""""""""""""""""""""""""""
"
"            quick escape  
"
""""""""""""""""""""""""""""""""""""""""
" set quick escape from insert mode, and now I can go without arrow keys and
" use j and k to move around in insert mode
imap JJ <esc>
imap jj <esc>


""""""""""""""""""""""""""""""""""""""""
"
"             wildmode
"
""""""""""""""""""""""""""""""""""""""""
" use <C-D> with this to get a list
set wildmenu


""""""""""""""""""""""""""""""""""""""""
"
"             tabbing 
"
""""""""""""""""""""""""""""""""""""""""
set shiftwidth=4
set tabstop=4
set softtabstop=4
set noexpandtab
set nu

""""""""""""""""""""""""""""""""""""""""
"
"             status line
"
""""""""""""""""""""""""""""""""""""""""
" set statusline=%F:\ %l
set laststatus=2

""""""""""""""""""""""""""""""""""""""""
"
"             misc
"
""""""""""""""""""""""""""""""""""""""""
"ve nice $ sign when you use `cw`
set cpoptions+=$

" Do not know how to use autocmd yet, so the following line not working
" autocmd FileType text setlocal textwidth=78
set textwidth=78


" get rid of the silly characters in window separators
set fillchars=""

" hello-world is now one world
set isk+=-

" change cwd to current buffer
nmap <silent> ,cd :lcd %:h<CR>

set background=dark
colorscheme molokai 
let g:solarized_termcolors=256

" Vim-go
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_auto_type_info = 1

nmap tt :TagbarToggle<CR>

" UltiSnips setting
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" airline setting
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set t_Co=256  
let g:airline_theme='powerlineish'  
" 关闭状态显示空白符号计数,这个对我用处不大"
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'

" setting ycm
let g:ycm_key_list_select_completion = ['<C-j>']
let g:ycm_key_list_previous_completion = ['<C-k>']
set completeopt=longest,menu
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1	
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_seed_identifiers_with_syntax=1

" For delimitMate
let b:delimitMate_expand_cr = 2 
let b:delimitMate_expand_space=1
let b:delimitMateBackspace=1

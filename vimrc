" ============================================================================
" Vundle initialization
" Avoid modify this section, unless you are very sure of what you are doing

let mapleader=','

" suport chinese languages
let &termencoding=&encoding
"set fileencodings=utf-8,gbk,ucs-bom,cp936
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" no vi-compatible
set nocompatible
set t_Co=256
syntax on

" Setting up Vundle - the best vim plugin manager
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Plugins
Plugin 'gmarik/vundle'

" ============================================================================
" Active plugins
" You can disable or add new ones here:

" Plugins from github repos:

" Python and PHP Debugger

" 缩进指示线
Plugin 'Yggdroot/indentLine'
Plugin 'fisadev/vim-debug.vim'
" Better file browser
Plugin 'scrooloose/nerdtree'
" Code commenter
Plugin 'scrooloose/nerdcommenter'
" Class/module browser
Plugin 'majutsushi/tagbar'

" add code preview just like sourceinsight,add by jack..
Plugin 'wesleyche/SrcExpl'    "类似sourceInsight的代码预览窗口"

"a plugin that highlights names of classes, variables, types etc in source
"code in Vim
Plugin 'abudden/taghighlight-automirror'


" Zen coding
Plugin 'mattn/emmet-vim'
" Maybe the best Git integration
Plugin 'tpope/vim-fugitive'

" Tab list panel
Plugin 'kien/tabman.vim'

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Consoles as buffers
Plugin 'rosenfeld/conque-term'
" Pending tasks list
Plugin 'fisadev/FixedTaskList.vim'
" Surround
Plugin 'tpope/vim-surround'
" Autoclose
"Plugin 'Townk/vim-autoclose'
" Indent text object
Plugin 'michaeljsmith/vim-indent-object'

" Python mode (indentation, doc, refactor, lints, code checking, motion and
" operators, highlighting, run and ipdb breakpoints)
"Plugin 'klen/python-mode'
" Better autocompletion
"Plugin 'Shougo/neocomplcache.vim'

" awesome colorscheme
Plugin 'cohlin/vim-colorschemes'
Plugin 'liuchengxu/space-vim-dark'
Plugin 'tomasr/molokai'

" Git/mercurial/others diff icons on the side of the file lines
Plugin 'mhinz/vim-signify'
" Automatically sort python imports
Plugin 'fisadev/vim-isort'
" Window chooser
Plugin 't9md/vim-choosewin'

" Python and other languages code checker
Plugin 'scrooloose/syntastic'
" Paint css colors with the real color
Plugin 'lilydjwg/colorizer'
" Relative numbering of lines (0 is the current line)
" (disabled by default because is very intrusive and can't be easily toggled
" on/off. When the plugin is present, will always activate the relative 
" numbering every time you go to normal mode. Author refuses to add a setting 
" to avoid that)
" Plugin 'myusuf3/numbers.vim'

" Plugins from vim-scripts repos:

" Search results counter
Plugin 'IndexedSearch'
" XML/HTML tags navigation
Plugin 'matchit.zip'
" Gvim colorscheme
Plugin 'Wombat'
" Yank history navigation
Plugin 'YankRing.vim'

" javascript complete after install the plugin, you must cd the install
" directory and run `npm install`, then add a .tern-project config file
" the doc at http://ternjs.net/doc/manual.html#vim
Plugin 'marijnh/tern_for_vim'
" Golang Plugins
Plugin 'fatih/vim-go'
" JSX syntax highlight.
Plugin 'mxw/vim-jsx'
" Markdown syntastic highlight
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Markdown realtime preview
" Before you want to use it, please run
" `sudo npm -g install instant-markdown-d`
Plugin 'suan/vim-instant-markdown'
" Handlebars syntax highlighting
Plugin 'mustache/vim-mustache-handlebars'
" Vue.js syntax and highlighting
Plugin 'tao12345666333/vim-vue'

"""""""" c/c++ jump support 
"header/source jump
"c complete.
Plugin 'a.vim'
Plugin 'c.vim' 
Plugin 'vim-scripts/gtags.vim'


"======================
Plugin 'davidhalter/jedi-vim'



"==================================================
"A Vim cheat sheet that makes sense, inside Vim!
"快捷命令： <leader>?
"==================================================
Plugin 'lifepillar/vim-cheat40'

"=================================================
" 在 vim 中直接打开一个 bash ，效果如下：
" :ConqueTermSplit bash
"=================================================
"Plugin 'vim-scripts/Conque-Shell'

"==================================================
"  函数列表,文件切换,模糊匹配查询（不使用ctrlp）
"  Plugin 'Yggdroot/LeaderF'
"这里定义了:
"    CTRL+P: 在当前项目目录打开文件搜索，====>修改为<leader>F. 
"    CTRL+N: 打开 MRU搜索，搜索你最近打开的文件，这两项是我用的最频繁的功能
"     ALT+P: 打开函数搜索，
"     ALT+N: 打开Buffer 搜索：
"
"   <C-R>:	switch between fuzzy search mode and regex mode
"   <C-F>:	switch between full path search mode and name only search mode
"   <C-J>:	move the cursor downward in the result window
"   <C-K>:	move the cursor upward in the result window
"
"==================================================
Plugin 'Yggdroot/LeaderF'

" Ctrl + p 打开文件搜索==>修改为<leader>F , Default value is '<leader>f'.
"searching files,   Default value is '<leader>f'.
let g:Lf_ShortcutF = '<leader>F'

"searching buffers, Default value is '<leader>b'.g
let g:Lf_ShortcutB = '<leader>b'  

"Most Recently Used (MRU) files.
noremap <leader>m :LeaderfMru<cr>
noremap <leader>f :LeaderfFunction!<cr>
noremap <leader>b :LeaderfBuffer<cr>
noremap <leader>t :LeaderfTag<cr>


"""""""""""""""
"Leaderf rg
"
" 原始的github的热键：<C-F>, <C-B>和vim的热键冲突
"
"""""""""""""""
" search word under cursor, the pattern is treated as regex, and enter normal mode directly
noremap gr :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>

" search word under cursor, the pattern is treated as regex,
" append the result to previous search results.
noremap <C-G> :<C-U><C-R>=printf("Leaderf! rg --append -e %s ", expand("<cword>"))<CR>

" search word under cursor literally only in current buffer
noremap gb :<C-U><C-R>=printf("Leaderf! rg -F --current-buffer -e %s ", expand("<cword>"))<CR>

" search visually selected text literally, don't quit LeaderF after accepting an entry
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F --stayOpen -e %s ", leaderf#Rg#visual())<CR>

" recall last search. If the result window is closed, reopen it.
noremap go :<C-U>Leaderf! rg --stayOpen --recall<CR>



let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }

let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

"======================
"安装三个插件 : vim-gutentags 索引自动管理 + 索引数据库切换 + 索引预览
"<leader>cg - 查看光标下符号的定义
"<leader>cs - 查看光标下符号的引用
"<leader>cc - 查看有哪些函数调用(calling)了该函数, 
"<leader>cd - 查看哪些functions called by  this function
"<leader>cf - 查找光标下的文件
"<leader>ci - 查找哪些文件 include 了本文件
"查找到索引后跳到弹出的 quikfix 窗口，停留在想查看索引行上，
"按 小p直接打开预览窗口，大P关闭预览，<leader>d 和 <leader>u 向上向下滚动预览窗口。
"======================
"自动载入tags gtags
if version >= 800
    Plugin 'ludovicchabant/vim-gutentags'
    Plugin 'skywind3000/gutentags_plus'

    let $GTAGSLABEL = 'native-pygments'
 
    let $GTAGSCONF = '/usr/local/share/gtags/gtags.conf'

    " gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
    let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

    " 所生成的数据文件的名称
    let g:gutentags_ctags_tagfile = '.tags'

    " 同时开启 ctags 和 gtags 支持：
"    let g:gutentags_modules = []
"    if executable('ctags')
"        let g:gutentags_modules += ['ctags']
"    endif
"    if executable('gtags-cscope') && executable('gtags')
"        let g:gutentags_modules += ['gtags_cscope']
"    endif

    " enable gtags module
    let g:gutentags_modules = ['ctags', 'gtags_cscope']

    " 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
    let g:gutentags_cache_dir = expand('~/.cache/tags')

    " 配置 ctags 的参数
    let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extras=+q']
    let g:gutentags_ctags_extra_args += ['--c++-kinds=+lpxzLANU']
    let g:gutentags_ctags_extra_args += ['--c-kinds=+lpxzL']

    " 如果使用 universal ctags 需要增加下面一行
    let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']

    " 禁用 gutentags 自动加载 gtags 数据库的行为
    " 避免多个项目数据库相互干扰
    " 使用plus插件解决问题
    let g:gutentags_auto_add_gtags_cscope = 0

    "第一步：判断 gtags 为何失败，需进一步打开日志，查看 gtags 的错误输出：
    let g:gutentags_define_advanced_commands = 1

    " change focus to quickfix window after search 搜索结果后,光标聚焦在quickfix
    let g:gutentags_plus_switch = 1

   "预览 quickfix 窗口 ctrl-w z 关闭
    Plugin 'skywind3000/vim-preview'
    "小p 预览 大p关闭
    autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
    autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>
    noremap <Leader>u :PreviewScroll -1<cr>  "往上滚动预览窗口
    noremap <leader>d :PreviewScroll +1<cr>  "往下滚动预览窗口
endif


"作者：orientlu
"链接：https://www.jianshu.com/p/110b27f8361b
"來源：简书

"==========================================
"动态检查
"vim8 支持异步后可以升级实时 linting 工具 ALE
"暂时关闭代码检查:ALEDisable， 上述配置设置了快捷键 F7,进行切换
":ALEDetail查看详细描述等；
"=========================================
Plugin 'w0rp/ale'
" 对应语言需要安装相应的检查工具
" https://github.com/w0rp/ale
"    let g:ale_linters_explicit = 1 "除g:ale_linters指定，其他不可用
"    let g:ale_linters = {
"\   'cpp': ['cppcheck','clang','gcc'],
"\   'c': ['cppcheck','clang', 'gcc'],
"\   'python': ['pylint'],
"\   'bash': ['shellcheck'],
"\   'go': ['golint'],
"\}
"
    let g:ale_linters = {
\   'cpp': ['cppcheck','clang','gcc'],
\   'c': ['cppcheck','clang', 'gcc'],
\}

    let g:ale_sign_column_always = 1
    let g:ale_completion_delay = 500
    let g:ale_echo_delay = 20
    let g:ale_lint_delay = 500
    let g:ale_echo_msg_format = '[%linter%] %code: %%s'
    let g:ale_lint_on_text_changed = 'normal'
    let g:ale_lint_on_insert_leave = 1
    let g:airline#extensions#ale#enabled = 1
    "let g:ale_set_quickfix = 1
    "let g:ale_open_list = 1"打开quitfix对话框

    let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
    let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
    let g:ale_c_cppcheck_options = ''
    let g:ale_cpp_cppcheck_options = ''

    let g:ale_sign_error = ">>"
    let g:ale_sign_warning = "--"
   "map <F7> ::ALEToggle<CR>


"=======cppman for vim =======
"Plugin for use of cppman ("C++ 98/11/14 manual pages for Linux/MacOS" ) from within Vim
"=============================
Plugin 'gauteh/vim-cppman'

"使用简单，只需要一条命令 :AsyncRun ... 就可以运行后台命令（格式就和老的 !
"命令一样）
Plugin 'skywind3000/asyncrun.vim'
" set the quickfix window 6 lines height.
let g:asyncrun_open = 6
" ring the bell to notify you job finished
let g:asyncrun_bell = 1

" F10 to toggle quickfix window
nnoremap <F6> :call asyncrun#quickfix_toggle(6)<cr>

"mini buf explore
"Plugin 'fholgado/minibufexpl.vim' 

"===========java complete ==========
Plugin 'artur-shaik/vim-javacomplete2'
autocmd FileType java setlocal omnifunc=javacomplete#Complete

"======= Doxygen Comenter ============
"安装好Doxygen后，打开代码文件，即可通过:DoxLic，:DoxAuthor，:Dox
"添加license说明、作者版本说明和函数说明.
"====================================
Plugin 'DoxygenToolkit.vim'
let g:load_doxygen_syntax=1
let g:DoxygenToolkit_authorName="Jack he"
let g:DoxygenToolkit_paramTag_pre="@param [IN/OUT]"
nnoremap <leader>do :Dox<cr> 

" c++ enhanced-highlight
"Plugin 'octol/vim-cpp-enhanced-highlight'


"================vimwiki================
Plugin 'vimwiki/vimwiki'
let g:vimwiki_autowriteall=1

"=====  plugin YouCompleteMe and ultisnips ====
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'rhysd/vim-clang-format'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=0

let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone  "关闭自动弹出的窗口

noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }

let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1,
			\ "objc":1,
			\ "sh":1,
			\ "zsh":1,
			\ "zimbu":1,
            \ "python":1,
			\ }

let g:ycm_seed_identifiers_with_syntax=1

let g:ycm_server_python_interpreter='/usr/bin/python'
"let g:ycm_server_python_interpreter='/Users/jack/.pyenv/shims/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

"===============================
" 显示函数原型，参数
"===============================
Plugin 'Shougo/echodoc'
set cmdheight=2
let g:echodoc_enable_at_startup = 1


"===============================
"use another snipmate:ultisnips
"===============================
"Plugin 'SirVer/ultisnips'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-t>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

"========================
" outline: for object-c
"========================
Plugin 'shougo/unite.vim'
Plugin 'shougo/unite-outline'
Plugin 'ryotakato/unite-outline-objc'
Plugin 'jiangmiao/auto-pairs'

" Unite outline
nnoremap <leader>oo :Unite outline<cr>

"======= Cocoa.vim =======
" for object-c
"========================
Plugin 'msanders/cocoa.vim'

"Methods for the current file can be listed and navigated to with 
"the |:ListMethods| command.
"
"A template of methods declared in a header file (.h) can be built
"in an implementation file (.m) with |:BuildMethods|
"


" ============================================================================
" Install plugins the first time vim runs

if iCanHazVundle == 0
    echo "Installing Plugins, please ignore key map error messages"
    echo ""
    :PluginInstall
endif

" ============================================================================
" Vim settings and mappings
" You can edit them as you wish

" allow plugins by file type (required for plugins!)
filetype plugin on
filetype indent on

" tabs and spaces handling
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" highlight cursor line and column
set cursorline
set cursorcolumn
" hidden startup messages
set shortmess=atI
" auto read and write
set autowrite
set autoread
" when deal with unsaved files ask what to do
set confirm
" no backup files
set nobackup
" other settings 
set langmenu=zh_CN.UTF-8
set mouse=a
set whichwrap+=<,>,h,l,[,]
set background=dark
set encoding=utf-8


" tab length exceptions on some file types
 autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
 autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
 autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2

" auto open or close NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" always show status bar
set laststatus=2

" incremental search
set incsearch
" highlighted search results
set hlsearch
" search ignore case
set ignorecase
" muting search highlighting 
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" syntax highlight on
syntax on

" show line numbers
set nu

" tab navigation mappings, tabman
"map tn :tabn<CR>
"map tp :tabp<CR>
"map tm :tabm 
"map tt :tabnew 
"map ts :tab split<CR>

" navigate windows with meta+arrows
"map <M-Right> <c-w>l
"map <M-Left> <c-w>h
"map <M-Up> <c-w>k
"map <M-Down> <c-w>j
"imap <M-Right> <ESC><c-w>l
"imap <M-Left> <ESC><c-w>h
"imap <M-Up> <ESC><c-w>k
"imap <M-Down> <ESC><c-w>j

" old autocomplete keyboard shortcut
imap <C-J> <C-X><C-O>

" Comment this line to enable autocompletion preview window
" (displays documentation related to the selected completion option)
" Disabled by default because preview makes the window flicker
set completeopt-=preview


" save as sudo
ca w!! w !sudo tee "%"

" simple recursive grep
" both recursive grep commands with internal or external (fast) grep
command! -nargs=1 RecurGrep lvimgrep /<args>/gj ./**/*.* | lopen | set nowrap
command! -nargs=1 RecurGrepFast silent exec 'lgrep! <q-args> ./**/*.*' | lopen
" mappings to call them
nmap ,R :RecurGrep 
nmap ,r :RecurGrepFast 
" mappings to call them with the default word as search text
nmap ,wR :RecurGrep <cword><CR>
nmap ,wr :RecurGrepFast <cword><CR>

" use 256 colors when possible
if &term =~? 'mlterm\|xterm\|xterm-256\|screen-256'
	let &t_Co = 256
   " colorscheme py-darcula
    colorscheme molokai
   "colorscheme space-vim-dark
else
    colorscheme delek
endif

" colors for gvim
if has('gui_running')
    colorscheme wombat
endif

" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3

" autocompletion of files and commands behaves like zsh
" (autocomplete menu)
set wildmenu
set wildmode=full

" better backup, swap and undos storage
set directory=~/.vim/dirs/tmp     " directory to place swap files in
set backup                        " make backup files
set backupdir=~/.vim/dirs/backups " where to put backup files
set undofile                      " persistent undos - undo after you re-open the file
set undodir=~/.vim/dirs/undos
set viminfo+=n~/.vim/dirs/viminfo
" store yankring history file there too
let g:yankring_history_dir = '~/.vim/dirs/'

" create needed directories if they don't exist
if !isdirectory(&backupdir)
    call mkdir(&backupdir, "p")
endif
if !isdirectory(&directory)
    call mkdir(&directory, "p")
endif
if !isdirectory(&undodir)
    call mkdir(&undodir, "p")
endif

" ============================================================================
" Plugins settings and mappings
" Edit them as you wish.

" Tagbar ----------------------------- 

" toggle tagbar display
map <F4> :TagbarToggle<CR>
" autofocus on tagbar open
let g:tagbar_autofocus = 1
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_width = 20

" NERDTree ----------------------------- 

" toggle nerdtree display
map <F3> :NERDTreeToggle<CR>
" open nerdtree with the current file selected
"nmap ,t :NERDTreeFind<CR>
" don;t show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$','.swp','\.git']
let NERDTreeShowBookmarks=1
let g:NERDTreeWinSize = 21

let NERDTreeShowLineNumbers=0  "是否显示行号
"let NERDTreeAutoCenter=1
let NERDTreeShowHidden=0  "是否显示隐藏文件



" Tasklist ------------------------------

" show pending tasks list
map <F2> :TaskList<CR>

" Vim-debug ------------------------------

" disable default mappings, have a lot of conflicts with other plugins
let g:vim_debug_disable_mappings = 1
" add some useful mappings
" map <F5> :Dbg over<CR>
" map <F6> :Dbg into<CR>
" map <F7> :Dbg out<CR>
" map <F8> :Dbg here<CR>
" map <F9> :Dbg break<CR>
" map <F10> :Dbg watch<CR> 
" map <F11> :Dbg down<CR>
" map <F12> :Dbg up<CR>
"

" CtrlP ------------------------------
" ctrlp,Vim的模糊搜索工具，支持文件，缓冲区，MRU（Most Recently Used）文件和标签等的搜索，也支持通过正则表达式搜索（Ctrl-r进行切换），同类软件还有 command-t,fzf等。
"

" file finder mapping
"let g:ctrlp_map = ',e'
" hidden some types files
"let g:ctrlp_show_hidden = 1
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif           "Linux
"" tags (symbols) in current file finder mapping
"nmap ,g :CtrlPBufTag<CR>
"" tags (symbols) in all files finder mapping
"nmap ,G :CtrlPBufTagAll<CR>
"" general code finder in all files mapping
"nmap ,f :CtrlPLine<CR>
"" recent files finder mapping
"nmap ,m :CtrlPMRUFiles<CR>
"" commands finder mapping
"nmap ,c :CtrlPCmdPalette<CR>
"" to be able to call CtrlP with default search text
"function! CtrlPWithSearchText(search_text, ctrlp_command_end)
"    execute ':CtrlP' . a:ctrlp_command_end
"    call feedkeys(a:search_text)
"endfunction
"" same as previous mappings, but calling with current word as default text
"nmap ,wg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>
"nmap ,wG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')<CR>
"nmap ,wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>
"nmap ,we :call CtrlPWithSearchText(expand('<cword>'), '')<CR>
"nmap ,pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>
"nmap ,wm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')<CR>
"nmap ,wc :call CtrlPWithSearchText(expand('<cword>'), 'CmdPalette')<CR>
"" don't change working directory
"let g:ctrlp_working_path_mode = 0
"" ignore these files and folders on file finder
"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
"  \ 'file': '\.pyc$\|\.pyo$',
"  \ }

" Syntastic ------------------------------

" show list of errors and warnings on the current file
nmap <leader>e :Errors<CR>
" check also when just opened the file
let g:syntastic_check_on_open = 1
" syntastic checker for javascript.
" eslint is the only tool support JSX.
" If you don't need write JSX, you can use jshint.
" And eslint is slow, but not a hindrance
" let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_checkers = ['eslint']
" don't put icons on the sign column (it hides the vcs status icons of signify)
let g:syntastic_enable_signs = 0
" custom icons (enable them if you use a patched font, and enable the previous 
" setting)
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'


"/// Python-mode ------------------------------
"//
"//" don't use linter, we use syntastic for that
"//let g:pymode_lint_on_write = 0
"//let g:pymode_lint_signs = 0
"//" don't fold python code on open
"//let g:pymode_folding = 0
"//" don't load rope by default. Change to 1 to use rope
"//let g:pymode_rope = 0
"//" open definitions on same window, and custom mappings for definitions and
"//" occurrences
"//let g:pymode_rope_goto_definition_bind = ',d'
"//let g:pymode_rope_goto_definition_cmd = 'e'
"//"nmap ,D :tab split<CR>:PymodePython rope.goto()<CR>
"//"nmap ,o :RopeFindOccurrences<CR>

" TabMan ------------------------------
"Tab Manager
" mappings to toggle display, and to focus on it
"let g:tabman_toggle = 'tl'
"let g:tabman_focus  = 'tf'

" Autoclose ------------------------------
" Fix to let ESC work as espected with Autoclose plugin
"let g:AutoClosePumvisible = {"ENTER": "", "ESC": ""}

" Signify ------------------------------

" this first setting decides in which order try to guess your current vcs
" UPDATE it to reflect your preferences, it will speed up opening files
let g:signify_vcs_list = [ 'git', 'hg' ]
" mappings to jump to changed blocks:  git next, git pre
nmap <leader>gn <plug>(signify-next-hunk)
nmap <leader>gp <plug>(signify-prev-hunk)
" nicer colors
highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
highlight DiffChange        cterm=bold ctermbg=none ctermfg=227
highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227

" Window Chooser ------------------------------

" mapping
nmap  -  <Plug>(choosewin)
" show big letters
let g:choosewin_overlay_enable = 1

" Airline ------------------------------

let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#whitespace#enabled = 1

 "打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
 "我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer"
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#buffer_nr_show = 1

" to use fancy symbols for airline, uncomment the following lines and use a
" patched font (more info on the README.rst)
if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif
" let g:airline_left_sep = '⮀'
" let g:airline_left_alt_sep = '⮁'
" let g:airline_right_sep = '⮂'
" let g:airline_right_alt_sep = '⮃'
" let g:airline_symbols.branch = '⭠'
" let g:airline_symbols.readonly = '⭤'
" let g:airline_symbols.linenr = '⭡'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


 "设置切换Buffer快捷键"
"  nnoremap <C-N> :bn<CR>
"  nnoremap <C-P> :bp<CR> 

" Tab navigation like Firefox.
"nnoremap <C-S-Tab> :bprevious<CR>
"nnoremap <C-Tab>   :bnext<CR>  

" new file set title and turn to endline
autocmd BufNewFile *.sh,*.py,*.rb exec ":call SetTitle()"
function! SetTitle()
    if &filetype == 'sh'
        call setline(1,"\#!/bin/bash")
        call setline(2,"#Author: jack he")
        call setline(3,"#Blog: xxxxxxxxxxxxxxxx")
        call setline(4,"#Time:" .strftime("%F %T"))
        call setline(5,"#Name:" .expand("%"))
        call setline(6,"#Version:v1.0")
        call setline(7,"#Description: this is a test script.")
	    call append(line(".")+6, "") 



    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
	    call append(line(".")+1, "") 

    elseif &filetype == 'ruby'
        call setline(1,"#!/usr/bin/env ruby")
        call append(line("."),"# encoding: utf-8")
	    call append(line(".")+1, "")
    endif
endfunction
autocmd BufNewFile * normal G

"--------------------------
"Quick Run
"C，C++ 按F10,保存w,编译运行
"--------------------------
map <F10> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %<"
        exec "! ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "! ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!java %<"
    elseif &filetype == 'sh'
        :!./%
    elseif &filetype == 'python'
        exec "!time python2 %"
    endif
endfunc

" Vim-jsx ------------------------------

" if you use JSX syntax in .js file, please enable it.
let g:jsx_ext_required = 0

" Vim-markdown -------------------------------

" Disabled automatically folding
let g:vim_markdown_folding_disabled=1
" LeTeX math
let g:vim_markdown_math=1
" Highlight YAML frontmatter
let g:vim_markdown_frontmatter=1

" Vim-instant-markdown -----------------

" If it takes your system too much, you can specify
" let g:instant_markdown_slow = 1
" if you don't want to manually control it
" you can open this setting
" and when you open this, you can manually trigger preview
" via the command :InstantMarkdownPreview
let g:instant_markdown_autostart = 0

"=========================================
"fast modify .vimrc,
""快速修改，快速加载.vimrc
""设置快速编辑.vimrc文件 ,e 编辑.vimrc
" 快速修改 vimrc 文件
"=========================================
"Fast reloading of the .vimrc
 map <silent> <leader>ss :source ~/.vimrc<cr>
"Fast editing of .vimrc
 map <silent> <leader>ee :e ~/.vimrc<cr>
"When .vimrc is edited, reload it
 autocmd! bufwritepost .vimrc source ~/.vimrc

"===================================
" config ctags and cscope ,接下来在代码的根目录运行 
"================================
"ctags -R
"cscope -Rbq
"
"
"ctags在子目录下怎么引用根目录tags
"
"第一个命令里的分号是必不可少的，这个命令让vim首先在当前目录里寻找tags文件，
"如果没有找到tags文件，就到父目录中查找，一直向上递归。因为tags文件中记录的
"路径总是相对于tags文件所在的路径，所以要使用第二个设置项来改变vim的当前目录。
"
"

"正确设置vimrc，读取tags（当前目录，否则向上级目录查找添加 .tags）
set tags=./.tags;,.tags
"set tags=tags;
"set autochdir


"===================================
" gtags config.
"===================================
"vimrc 中设置环境变量启用 pygments
"let $GTAGSLABEL = 'native-pygments'
"let $GTAGSCONF = '/usr/local/share/gtags/gtags.conf' " 此路径根据实际设置（find一下）

"==================================
"安装三个插件 : vim-gutentags 索引自动管理 + 索引数据库切换 + 索引预览
"==================================
"定义了一系列快捷键：
"
"<leader>cg - 查看光标下符号的定义
"<leader>cs - 查看光标下符号的引用
"<leader>cc - 查看有哪些函数调用了该函数
"<leader>cf - 查找光标下的文件
"<leader>ci - 查找哪些文件 include 了本文件
"查找到索引后跳到弹出的 quikfix 窗口，停留在想查看索引行上，
"按 小P直接打开预览窗口，大P关闭预览，\d 和 \u 向上向下滚动预览窗口。



""===================================
" config SrcExpl (Source Explorer) 
"==================================
" // The switch of the Source Explorer 
nmap <F5> :SrcExplToggle<CR> 

" // Set the height of Source Explorer window 
let g:SrcExpl_winHeight = 8 

" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100 

" // Set "Enter" key to jump into the exact definition context 
let g:SrcExpl_jumpKey = "<ENTER>" 

" // Set "Space" key for back from the definition context 
let g:SrcExpl_gobackKey = "<SPACE>" 

" // In order to avoid conflicts, the Source Explorer should know what plugins
" // except itself are using buffers. And you need add their buffer names into
" // below listaccording to the command ":buffers!"
let g:SrcExpl_pluginList = [ 
        \ "__Tagbar__", 
        \ "NERD_tree_1", 
        \ "Source_Explorer"
    \ ] 

" // The color schemes used by Source Explorer. There are five color schemes
" // supported for now - Red, Cyan, Green, Yellow and Magenta. Source Explorer
" // will pick up one of them randomly when initialization.
let g:SrcExpl_colorSchemeList = [
        \ "Red",
        \ "Cyan",
        \ "Green",
        \ "Yellow",
        \ "Magenta"
    \ ]

" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1 

" // Workaround for Vim bug @https://goo.gl/TLPK4K as any plugins using autocmd for
" // BufReadPre might have conflicts with Source Explorer. e.g. YCM, Syntastic etc.
let g:SrcExpl_nestedAutoCmd = 1

" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" // create/update the tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 

" // Set "<F12>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F8>" 


" // Set "<F3>" key for displaying the previous definition in the jump list   
 let g:SrcExpl_prevDefKey = "<F6>" 

" // Set "<F4>" key for displaying the next definition in the jump list 
let g:SrcExpl_nextDefKey = "<F7>"

"highlight Functions of C language...
syn match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cFunctions gui=NONE cterm=bold  ctermfg=blue
 

"vim copy to cliper board

"----:"+y    复制到系统剪贴板  
"----:"+p    粘贴  
"----:"+gp  粘贴并且移动光标到粘贴内容后  
"nmap <C-c>  "+y
"nmap <C-v>  "+gp"
"nmap <silent> <leader>c :"+y<cr>
"nmap <silent> <leader>v :"+gp<cr>
"


"用ctags搜索代码时, 用 ctrl + ] 后，只有一个匹配项直接跳转，有多个则列出所有匹配项选择跳转
"使用 :ts 命令
"在 .vimrc 中添加以下配置：map <c-]> g<c-]>
map <c-]> g<c-]>

nmap <leader>nh :noh<CR>


"ctags for linux system include header files.
"set tags+=/Volumes/LenovoSSD/unix_tags/systags

"set tags+=/Users/jack/MACDISK02/MacOS_systags/systags
"
"
"==============================================
" YCM(youcompleteme) 支持代码跳转，跳转到声明和
" 实现。
"主要功能是3个YcmCompleter的subcommands:
"GoToDeclaration
"GoToDefinition
"GoToDefinitionElseDeclaration
"==============================================
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>




"==============================================
" add a definition for Objective-C to tagbar
"==============================================
"在Xcode工程根目录下运行以下命令创建tags文件

"ctags --exclude='.git' --exclude='*.js' -R .

"Note that when using ctags, .m is treated as Matlab and .h is treated as C++. To override, use:

"$ctags --langmap=ObjectiveC:.m.h  --exclude='.git' --exclude='*.js' -R .

let g:tagbar_type_objc = {
    \ 'ctagstype' : 'ObjectiveC',
    \ 'kinds'     : [
        \ 'i:interface',
        \ 'I:implementation',
        \ 'p:Protocol',
        \ 'm:Object_method',
        \ 'c:Class_method',
        \ 'v:Global_variable',
        \ 'F:Object field',
        \ 'f:function',
        \ 'p:property',
        \ 't:type_alias',
        \ 's:type_structure',
        \ 'e:enumeration',
        \ 'M:preprocessor_macro',
    \ ],
    \ 'sro'        : ' ',
    \ 'kind2scope' : {
        \ 'i' : 'interface',
        \ 'I' : 'implementation',
        \ 'p' : 'Protocol',
        \ 's' : 'type_structure',
        \ 'e' : 'enumeration'
    \ },
    \ 'scope2kind' : {
        \ 'interface'      : 'i',
        \ 'implementation' : 'I',
        \ 'Protocol'       : 'p',
        \ 'type_structure' : 's',
        \ 'enumeration'    : 'e'
    \ }
\ }

"==============================================
" vim autoload cscope.out file
" Vim中自动加载cscope.out ===> use Gtags, donot use this..
"==============================================
"if has("cscope")
"    set csprg=/usr/local/bin/cscope "指定用来执行cscope的命令
"	set csto=0      "0:先搜索cscope数据库,再搜索tags标签文件, 1:反之
"	set cst         "使用:cstag,而不是:tag
"	set csverb      "显示添加数据库成功与否
"    set cspc=3
"	" add any database in current directory
"	if filereadable("cscope.out")
"	    cs add cscope.out
"	" else add database pointed to by environment
"	"elseif $CSCOPE_DB != ""
"	"    cs add $CSCOPE_DB
"    else
"        let cscope_file=findfile("cscope.out", ".;")
"        let cscope_pre=matchstr(cscope_file, ".*/")
"
"        if !empty(cscope_file) && filereadable(cscope_file)
"            exe "cs add" cscope_file cscope_pre
"        endif
"
"	endif
"	"set csverb
"endif

"quick hotkey.
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>a :cs find a <C-R>=expand("<cword>")<CR><CR>


"0或者s: 查找C语言符号，即查找函数名、宏、枚举值等出现的地方 
"1或者g: 查找函数、宏、枚举等定义的位置，类似ctags所提供的功能 
"2或者d: 查找本函数调用的函数 
"3或者c: 查找调用本函数的函数 
"4或者t: 查找指定的字符串 
"6或者e: 查找egrep模式，相当于egrep功能，但查找速度快多了 
"7或者f: 查找并打开文件，类似vim的find功能 
"8或者i: 查找#include这个文件的文件（们）

"==================================
" snipMate cannot use <TAB> hotkey,
"  <TAB> is used by YouCompleteme.
"=================================

"================fzf 工具==============
"插件主要对 fzf 集成绑定了一些和 vim 相关的功能，比如：
"查找当前 Buffer、Tag、Marks。甚至切换 window,
"更换 vim 主题配色Colors, Rg查询, Lines, BLines,
"https://github.com/hawkinchina/fzf.vim
"
" If installed using Homebrew
set rtp+=/usr/local/opt/fzf
Plugin 'junegunn/fzf.vim'

" set g:fzf_command_prefix to give the same prefix to the commands
let g:fzf_command_prefix = 'Fzf'

"因为ripgrep是目前性能最好的文本内容搜索工具，所以我们可以自己定义一个命令

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

"======================
"缩进指示线配置(代码编辑)
"=====================
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
"let g:indentLine_setColors = 0
"let g:indentLine_color_term = 239
"映射到ctrl+i键
map <C-i> :IndentLinesToggle<CR>


"问题：
"使用mac自带的vim无法使用"+y和"+p复制粘贴文本。

"解决办法：
"在.vimrc中添加如下两条语句
"vmap "+y :w !pbcopy<CR><CR>
"nmap "+p :r !pbpaste<CR><CR>


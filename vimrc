let mapleader=","

let s:darwin = has('mac')

" suport chinese languages
let &termencoding=&encoding
"set fileencodings=utf-8,gbk,ucs-bom,cp936
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" no vi-compatible
set nocompatible
"fix:vim 退格键（backspace）不能用,
set backspace=indent,eol,start
set t_Co=256
"开启24bit的颜色
"set termguicolors
syntax on

"=====================================
"===BEGIN ====  vim-plug plugin manager.
"=====================================
" For Mac/Linux users
" Since all the other major plugin managers store plugins in "bundle" directory, 
" you might want to pass it to plug#begin() if you do not wish to reinstall plugins.

call plug#begin('~/.vim/bundle')

" ============================================================================
" Vundle initialization
"  Avoid modify this section, unless you are very sure of what you are doing
" Setting up Vundle - the best vim plugin manager

" - let iCanHazVundle=1
" - let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
" - if !filereadable(vundle_readme)
" -     echo "Installing Vundle...
" -     echo ""
" -     silent !mkdir -p ~/.vim/bundle
" -     silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
" -     let iCanHazVundle=0
" - endif
" - 
" - filetype off
" - 
" - set rtp+=~/.vim/bundle/vundle/
" - call vundle#rc()
" - 

" let Vundle manage Plugins
Plug 'gmarik/vundle'
Plug 'junegunn/vim-plug'

" ============================================================================
" Active plugins
" You can disable or add new ones here:
" Plugins from github repos:

" Python and PHP Debugger

" 缩进指示线
Plug 'Yggdroot/indentLine'
Plug 'fisadev/vim-debug.vim'
" Better file browser
Plug 'scrooloose/nerdtree'
" Code commenter
"Plug 'scrooloose/nerdcommenter'

Plug 'preservim/nerdcommenter'
" Class/module browser
Plug 'majutsushi/tagbar'

" add code preview just like sourceinsight,add by jack..
"类似sourceInsight的代码预览窗口"
"Plug 'wesleyche/SrcExpl'    

"a plugin that highlights names of classes, variables, types etc in source
"code in Vim
"Plug 'abudden/taghighlight-automirror'

" Zen coding
Plug 'mattn/emmet-vim'
" Maybe the best Git integration
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" Tab list panel
Plug 'kien/tabman.vim'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Consoles as buffers
Plug 'rosenfeld/conque-term'
" Pending tasks list
Plug 'fisadev/FixedTaskList.vim'


"Edit
"Surround
Plug 'tpope/vim-surround'
" Autoclose
"-Plugin 'Townk/vim-autoclose'
" Indent text object
Plug 'michaeljsmith/vim-indent-object'

" Python mode (indentation, doc, refactor, lints, code checking, motion and
" operators, highlighting, run and ipdb breakpoints)
"-Plugin 'klen/python-mode'
" Better autocompletion
"-Plugin 'Shougo/neocomplcache.vim'

" awesome colorscheme
Plug 'cohlin/vim-colorschemes'
Plug 'liuchengxu/space-vim-dark'
"-Plugin 'liuchengxu/space-vim-theme'
Plug 'tomasr/molokai'

" Git/mercurial/others diff icons on the side of the file lines
Plug 'mhinz/vim-signify'
" Automatically sort python imports
"Plug 'fisadev/vim-isort'
" Window chooser
Plug 't9md/vim-choosewin'

" Python and other languages code checker
Plug 'scrooloose/syntastic'

" Paint css colors with the real color
Plug 'lilydjwg/colorizer'
" Relative numbering of lines (0 is the current line)
" (disabled by default because is very intrusive and can't be easily toggled
" on/off. When the plugin is present, will always activate the relative 
" numbering every time you go to normal mode. Author refuses to add a setting 
" to avoid that)
"- Plugin 'myusuf3/numbers.vim'

"- Plugins from vim-scripts repos:

" Search results counter
Plug 'vim-scripts/IndexedSearch'
" XML/HTML tags navigation
Plug 'vim-scripts/matchit.zip'
" Gvim colorscheme
Plug 'vim-scripts/Wombat'
" Yank history navigation
Plug 'vim-scripts/YankRing.vim'

" javascript complete after install the plugin, you must cd the install
" directory and run `npm install`, then add a .tern-project config file
" the doc at http://ternjs.net/doc/manual.html#vim
"-Plugin 'marijnh/tern_for_vim'
" Golang Plugins
"-Plugin 'fatih/vim-go'
" JSX syntax highlight.
"- Plugin 'mxw/vim-jsx'

" Markdown syntastic highlight
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Markdown realtime preview
" Before you want to use it, please run
" `sudo npm -g install instant-markdown-d`
"Plug 'suan/vim-instant-markdown'

"Plug 'junegunn/vim-xmark', { 'do': 'make' }
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'junegunn/x5050'


" Handlebars syntax highlighting
Plug 'mustache/vim-mustache-handlebars'
" Vue.js syntax and highlighting
"-Plugin 'tao12345666333/vim-vue'

"""""""" c/c++ jump support 
"header/source jump
"A few of quick commands to swtich between source files and header files quickly.
":A switches to the header file corresponding to the current file being edited (or vise versa)
":AS splits and switches
":AV vertical splits and switches
":AT new tab and switches
":AN cycles through matches
":IH switches to file under cursor
":IHS splits and switches
":IHV vertical splits and switches
":IHT new tab and switches
":IHN cycles through matches
"<Leader>ih switches to file under cursor
"<Leader>is switches to the alternate file of file under cursor (e.g. on  <foo.h> switches to foo.cpp)
"<Leader>ihn cycles through matches
"
"c complete.
Plug 'vim-scripts/a.vim'
Plug 'vim-scripts/c.vim'
Plug 'vim-scripts/gtags.vim'

"test startup time of vim.
Plug 'tweekmonster/startuptime.vim'


Plug 'voldikss/vim-translator'
Plug 'Chiel92/vim-autoformat'
Plug 'sillybun/vim-repl'
Plug 'davidhalter/jedi-vim'
Plug 'lifepillar/vim-cheat40'

Plug 'Yggdroot/LeaderF'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'

Plug 'w0rp/ale'
Plug 'gauteh/vim-cppman'

Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'
Plug 'artur-shaik/vim-javacomplete2'

Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'vimwiki/vimwiki'

"youCompleteMe
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator'
Plug 'rhysd/vim-clang-format'

"" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

Plug 'shougo/unite.vim'
Plug 'shougo/unite-outline'
Plug 'ryotakato/unite-outline-objc'
Plug 'jiangmiao/auto-pairs'


Plug 'Shougo/echodoc'
Plug 'msanders/cocoa.vim'
Plug 'jph00/swift-apple'
Plug 'skywind3000/vim-preview'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

"Plug 'cosminadrianpopescu/vim-sql-workbench'
"Plug 'vim-scripts/dbext.vim'

"Vim C++ syntax highlight plugin by libclang
"Plug 'bbchung/clighter8'

"Plug 'jsit/vim-customcpt'

"displays available keybindings in popup.
Plug 'liuchengxu/vim-which-key'

"=====================================
"===END.====  vim-plug plugin manager.
"=====================================
call plug#end()


"let g:clighter8_libclang_path='/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'

"
"====================================
" @dict
"voldikss/vim-translator
"支持悬浮窗口和异步特性的(Neo)Vim 翻译插件
"
":Translate  翻译文本并在底部的命令栏回显
":TranslateW 翻译文本并在floating-window/popup显示
":TranslateR 将光标下文本用翻译内容替换
":TranslateH 导出翻译历史记录
"====================================
"Plug 'voldikss/vim-translator'

" <Leader>t 翻译光标下的文本，在命令行回显
nmap <silent> <Leader><Leader>t <Plug>Translate
vmap <silent> <Leader><Leader>t <Plug>TranslateV
" Leader>w 翻译光标下的文本，在窗口中显示
nmap <silent> <Leader><Leader>w <Plug>TranslateW
vmap <silent> <Leader><Leader>w <Plug>TranslateWV
" Leader>r 替换光标下的文本为翻译内容
nmap <silent> <Leader><Leader>r <Plug>TranslateR
vmap <silent> <Leader><Leader>r <Plug>TranslateRV

"====================================
"@keysound: 让 Vim 播放打字机的音效
"Command :KeysoundEnable and :KeysoundDisable can be 
"used to manually start/stop the plugin if g:keysound_enable = 1 is not assigned.
"===================================
"Plugin 'skywind3000/vim-keysound'

" 启动 Vim 时自动启动/disable
let g:keysound_enable = 0

" 设置默认音效主题，可以选择：default, typewriter, mario, bubble, sword
let g:keysound_theme = 'default'

" 设置 python 版本：2 或者3 默认会自动检测
let g:keysound_py_version = 3 

" 设置音量：0-1000, default = 500
let g:keysound_volume = 850

"==================================================
" 插件vim-autoformat能够自动的一键格式化代码
"==================================================
"Plugin 'Chiel92/vim-autoformat'
"nnoremap <F6> :Autoformat<CR>
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
let g:autoformat_verbosemode=1

"only format the selected part
"let g:formatdef_autopep8 = "'autopep8 - --range '.a:firstline.' '.a:lastline"
"let g:formatters_python = ['autopep8']
let g:formatter_yapf_style = 'pep8'
let g:formatters_python = ['yapf']


"自动格式化python代码
"au BufWrite *.py :Autoformat


"格式化代码也不一定非要安装插件才能实现，因为Vim可以执行外部命令，
"因此你也可以写一个函数调用外部工具来实现代码格式化，比如下面就用
"函数调用astyle和autopep8来格式化代码
"map <F2> :call FormatCode()<CR>
"
func! FormatCode()
    exec "w"
    if &filetype == 'c' || &filetype == 'h'
        exec "!astyle --style=allman --suffix=none %"
    elseif &filetype == 'cpp' || &filetype == 'cc' || &filetype == 'hpp'
        exec "!astyle --style=allman --suffix=none %"
    elseif &filetype == 'perl'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'py'|| &filetype == 'python'
        exec "!autopep8 --in-place --aggressive %"
    elseif &filetype == 'java'
        exec "!astyle --style=java --suffix=none %"
    elseif &filetype == 'jsp'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'xml'
        exec "!astyle --style=gnu --suffix=none %"
    else
        exec "normal gg=G"
        return
    endif
endfunc

"==================================================
"它实现了python自动格式化代码功能，每次输入完一条语句，上一条语句
"就会自动的调用autopep8进行格式化
"==================================================
"-Plugin 'sillybun/autoformatpythonstatement'
"autocmd FileType python let g:autoformatpython_enabled = 1



"==================================================
"插件的目的是执行一遍可以运行的python脚本，然后加上每个参数对应的类型的注释。
"python自动添加函数参数类型
" 给所有函数加上docstring
":RecordParameter
" 给当前光标下的函数加上docstring
":RecordCurrentFunction
"==================================================
"-Plugin 'sillybun/vim-autodoc'


"==================================================
" @REPL: 读取-求值-输出”循环（英语：Read-Eval-Print
" Loop，简称REPL）是一个简单的，交互式的编程环境。
" for: python
" 1. 通过按<leader>rep打开一个REPL窗口.
"          <leader>rep关闭一个repl窗口
" 2. 在普通模式下按<leader>w把当前行发送到REPL窗口
" 3. 在普通模式下在代码块的第一行按<leader>w，把一块代码
"    发送到REPL窗口
" 4> 在选择模式下选中多行代码按<leader>w把一块代码发送到REPL窗口
"    :ggVG 全部选择行
" 5. 在python程序中进行代码调试
""
"
"==================================================
"Plugin 'sillybun/vim-repl'

let g:repl_program = {
            \   'python': 'ipython',
            \   'default': 'zsh',
            \   'r': 'R',
            \   'lua': 'lua',
            \   }

let g:repl_predefine_python = {
            \   'numpy': 'import numpy as np',
            \   'matplotlib': 'from matplotlib import pyplot as plt'
            \   }

let g:repl_cursor_down = 1
let g:repl_python_automerge = 1
let g:repl_ipython_version = '7'
nnoremap <leader>rep :REPLToggle<Cr>
"在当前行设置断点并运行
autocmd Filetype python nnoremap <F9> <Esc>:REPLDebugStopAtCurrentLine<Cr>

"运行一行（不进入函数）
autocmd Filetype python nnoremap <F10> <Esc>:REPLPDBN<Cr>

"运行一行（进入函数）
autocmd Filetype python nnoremap <F8> <Esc>:REPLPDBS<Cr>
let g:repl_position = 3


"==================================================
"Plugin 'davidhalter/jedi-vim'
"==================================================
" Vimux -- Easily interact with tmux from vim.
" VimuxRunCommand: execute a command in it
" VimuxRunLastCommand: that will execute the last command
" you called with `VimuxRunCommand`.
"==================================================
"Plugin 'benmills/vimux'

 " Run the current file with python
 map <Leader>rb :call VimuxRunCommand("clear; python " . bufname("%"))<CR>

 " Prompt for a command to run
 map <Leader>vp :VimuxPromptCommand<CR>

 " Run last command executed by VimuxRunCommand
 map <Leader>vl :VimuxRunLastCommand<CR>

 " Inspect runner pane
 map <Leader>vi :VimuxInspectRunner<CR>

 " Close vim tmux runner opened by VimuxRunCommand
 map <Leader>vq :VimuxCloseRunner<CR>

 " Interrupt any command running in the runner pane
 map <Leader>vx :VimuxInterruptRunner<CR>

 " Zoom the runner pane (use <bind-key> z to restore runner pane)
 map <Leader>vz :call VimuxZoomRunner()<CR>

"Here is how to use vimux to send code to a REPL. This is similar to tslime.
"First, add some helpful mappings.

 function! VimuxSlime()
  call VimuxSendText(@v)
  call VimuxSendKeys("Enter")
 endfunction

 " Visual mode: If text is selected, save it in the v buffer and send that buffer it to tmux
 vmap <Leader>vs "vy :call VimuxSlime()<CR>

 " Normal mode: Select current paragraph and send it to tmux
 nmap <Leader>vs vip<Leader>vs<CR>

"==================================================
"A Vim cheat sheet that makes sense, inside Vim!
"快捷命令： <leader>?
"==================================================
"Plugin 'lifepillar/vim-cheat40'

"=================================================
" 在 vim 中直接打开一个 bash ，效果如下：
" :ConqueTermSplit bash
"=================================================
"-Plugin 'vim-scripts/Conque-Shell'

"==================================================
" @LeaderF
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
"Plugin 'Yggdroot/LeaderF'

" Ctrl + p 打开文件搜索==>修改为<leader>F , Default value is '<leader>f'.
"searching files,   Default value is '<leader>f'.
let g:Lf_ShortcutF = '<leader>F'

"searching buffers, Default value is '<leader>b'.
let g:Lf_ShortcutB = '<leader>b'  

"Most Recently Used (MRU) files.
noremap <leader>m :LeaderfMru<cr>
noremap <leader>f :LeaderfFunction!<cr>
noremap <leader>b :LeaderfBuffer<cr>
noremap <leader>T :LeaderfTag<cr>
noremap <leader>t :LeaderfBufTag<cr>
noremap <leader>l :LeaderfLine<cr>


"""""""""""""""
"Leaderf rg
" :Leaderf rg -h
"
" 原始的github的热键：<C-F>, <C-B>和vim的热键冲突
" 建议： 后续查询命令g字母开头
"
"""""""""""""""
" search word under cursor, the pattern is treated as regex, and enter normal mode directly
" 模糊匹配查询,当前目录下所有： 光标下的字符
noremap gr :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>

" search word under cursor literally only in current buffer
" 模糊匹配查询,当前buffer: 光标下的字符
noremap gb :<C-U><C-R>=printf("Leaderf! rg -F --current-buffer -e %s ", expand("<cword>"))<CR>


" search visually selected text literally, don't quit LeaderF after accepting an entry
" 查询当前目录下所有： 选择的文本
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F  -e %s ", leaderf#Rg#visual())<CR>

" recall last search. If the result window is closed, reopen it.
" 重复执行上次查询命令
noremap go :<C-U>Leaderf! rg --stayOpen --recall<CR>

"=================
" Leaderf gtags
"================
" :Leaderf gtags -h
"  -d <PATTERN>, --definition <PATTERN>
"     定义： Show locations of definitions.
"  -r <PATTERN>, --reference <PATTERN>
"     引用： Show reference to a symbol which has definitions.
"  n: next 下一个搜索的结果
"  p: previous, 前一个结果
"
" should use `Leaderf gtags --update` first
" LeaderF 可以自己管理 gtags 数据库（GTAGS，GRTAGS，GPATH），
"它不会在你的项目目录下生成任何额外的文件或目录。gtags 数据库
"文件存储在$HOME/.LfCache/gtags/%PATH%OF%YOUR%PROJECT/下面
"/Users/jack/.vim/cache/.LfCache/gtags/下面目录保存gtags

let g:Lf_GtagsAutoGenerate = 0
let g:Lf_Gtagslabel = 'native-pygments'
noremap <leader>gr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>gd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>go :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>

noremap <leader>gn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>gp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>


let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }

let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {
            \ 'File': 0,
            \ 'Buffer': 0,
            \ 'Mru': 0,
            \ 'Tag': 0,
            \ 'BufTag': 1,
            \ 'Function': 1,
            \ 'Line': 0,
            \ 'Colorscheme': 0,
            \ 'Rg': 0,
            \ 'Gtags': 0
            \}

"==================================================
"   @vim-gutentags, gutentags_plus, vim-preview
"   老的cscope, 不要再使用了会影响， 
"==================================================

"安装三个插件 : 解决了：按需自动索引，数据库自动连接以及结果快速预览等以往使用 gtags 的痛点问题，
"1):vim-gutentags 索引自动管理 + 索引数据库切换 + 索引预览
"<leader>cg - g 查看光标下符号的定义
"<leader>cs - s 查看光标下符号的引用

"<leader>cc - c 查看有哪些函数调用(calling)了该函数, 
"<leader>cd - d 查看哪些functions called by this function, Gtags-cscope没有实现

"<leader>cf - f 查找光标下的文件
"<leader>ci - i 查找哪些文件 include 了本文件
"
"<leader>cs	Find symbol (reference) under cursor
"<leader>cg	Find symbol definition under cursor

"<leader>cd	Functions called by this function
"<leader>cc	Functions calling this function
"<leader>ct	Find text string under cursor
"<leader>ce	Find egrep pattern under cursor
"<leader>cf	Find file name under cursor
"<leader>ci	Find files #including the file name under cursor
"<leader>ca	Find places where current symbol is assigned;符号被赋值count = 
"
""查找到索引后跳到弹出的 quikfix 窗口，停留在想查看索引行上，
"按 小P直接打开预览窗口，大P关闭预览，<leader>d 和 <leader>u 向上向下滚动预览窗口。
"
"
"2):gutentags_plus: 功能connecting gtags_cscope db on demand，切换索引数据库:
"   老的cscope, 不要再使用了会影响， 
"
"3):可使用 vim-preview 插件: 高效的在 quickfix 中先快速预览所有结果，再有针对性的打开必要文件
"=================================================
"自动载入tags gtags
"
"if version >= 800
"    Plugin 'ludovicchabant/vim-gutentags'
"    Plugin 'skywind3000/gutentags_plus'

    let $GTAGSLABEL = 'native-pygments'
    "let $GTAGSLABEL = 'native'

    let $GTAGSCONF = '/usr/local/share/gtags/gtags.conf'

    " gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
    let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

    " 所生成的数据文件的名称
    let g:gutentags_ctags_tagfile = '.tags'
"
"    " 同时开启 ctags 和 gtags 支持：
"    let g:gutentags_modules = []
"    if executable('ctags')
"        let g:gutentags_modules += ['ctags']
"    endif
"    if executable('gtags-cscope') && executable('gtags')
"        let g:gutentags_modules += ['gtags_cscope']
"    endif
"
    " enable gtags module
    let g:gutentags_modules = ['ctags', 'gtags_cscope']
"   let g:gutentags_modules = ['gtags_cscope']



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

    "判断 gtags 为何失败，需进一步打开日志，查看 gtags 的错误输出：
    let g:gutentags_define_advanced_commands = 1

    " change focus to quickfix window after search 搜索结果后,光标聚焦在quickfix
    let g:gutentags_plus_switch = 1

   "预览 quickfix 窗口 ctrl-w z 关闭
    "Plugin 'skywind3000/vim-preview'
    "小p 预览 大p关闭
    autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
    autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>
    noremap <leader>u :PreviewScroll -1<cr>  "往上滚动预览窗口
    noremap <leader>d :PreviewScroll +1<cr>  "往下滚动预览窗口
"endif


"作者：orientlu
"链接：https://www.jianshu.com/p/110b27f8361b
"來源：简书

"==========================================
"@ALE: 动态检查
"vim8 支持异步后可以升级实时 linting 工具 ALE
"暂时关闭代码检查:ALEDisable， 上述配置设置了快捷键 F7,进行切换
":ALEDetail查看详细描述等；
"=========================================
"Plugin 'w0rp/ale'
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

    "显示Linter名称,出错或警告等相关信息
   " let g:ale_echo_msg_error_str = 'E'
   " let g:ale_echo_msg_warning_str = 'W'
   " let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'


    let g:ale_lint_on_text_changed = 'normal'
    let g:ale_lint_on_insert_leave = 1
    let g:airline#extensions#ale#enabled = 1
    "let g:ale_set_quickfix = 1
    "let g:ale_open_list = 1 "打开quitfix对话框

    let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
    let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
    let g:ale_c_cppcheck_options = ''
    let g:ale_cpp_cppcheck_options = ''

    let g:ale_sign_error = ">>"
    let g:ale_sign_warning = "--"
   "map <F7> ::ALEToggle<CR>


"ALE普通模式下，ak 前往上一个错误或警告，aj 前往下一个错误或警告                                                                                                                                                    
nmap ak <Plug>(ale_previous_wrap)
nmap aj <Plug>(ale_next_wrap)
" ad 查看错误或警告的详细信息
nmap ad :ALEDetail<CR>
nmap at :ALEToggle<CR>


"=======cppman for vim =======
"Plugin for use of cppman ("C++ 98/11/14 manual pages for Linux/MacOS" ) from within Vim
"Move the cursor to the keyword and hit K to lookup the keyword in a new buffer.
"=============================
"Plugin 'gauteh/vim-cppman'

"使用简单，只需要一条命令 :AsyncRun ... 就可以运行后台命令（格式就和老的 !
"命令一样）
"Plugin 'skywind3000/asyncrun.vim'
" set the quickfix window 6 lines height.
let g:asyncrun_open = 6
" ring the bell to notify you job finished
let g:asyncrun_bell = 1

" F6 to toggle quickfix window
" 设置 <F6>打开/关闭 Quickfix 窗口
nnoremap <F6> :call asyncrun#quickfix_toggle(6)<cr>

"asynctask: 在一个新的 tab 上打开内置终端，运行程序.
"let g:asynctasks_term_pos = 'tab'


"mini buf explore
"-Plugin 'fholgado/minibufexpl.vim' 

"===========java complete ==========
"-Plugin 'artur-shaik/vim-javacomplete2'
autocmd FileType java setlocal omnifunc=javacomplete#Complete

"======= @Doxygen Comenter ============
"安装好Doxygen后，打开代码文件，即可通过:DoxLic，:DoxAuthor，:Dox
"添加license说明、作者版本说明和函数说明.
"====================================
"Plugin 'DoxygenToolkit.vim'
let g:load_doxygen_syntax=1
let g:DoxygenToolkit_authorName="Jack he"
let g:DoxygenToolkit_paramTag_pre="@param [IN/OUT]"
nnoremap <leader>dox :Dox<cr> 

" c++ enhanced-highlight
"Plugin 'octol/vim-cpp-enhanced-highlight'


"================vimwiki================
"Plugin 'vimwiki/vimwiki'
let g:vimwiki_autowriteall=1

"=============================================
"=====@ycm  @YouCompleteMe and @ultisnips ====
"=============================================
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'rdnetto/YCM-Generator'
"Plugin 'rhysd/vim-clang-format'

" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>

"于是乎我的折腾思路调整为
"安装引擎 SirVer/ultisnips
"安装代码块集合 honza/vim-snippets
"添加自定义代码块，把优先级调高，覆盖掉 honza/vim-snippets 中不满意的代码片段。
"
"" Track the engine.
"Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'


" 开启 YCM 标签补全引擎
"
" these are logs after setting : 方便定位log
" let g:ycm_keep_logfiles = 1 
" let g:ycm_log_level = 'debug'
" 目前使用clangd-completer， 而不是clang-completer.
" let g:ycm_use_clangd = 0

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
			\ 'vim,cs,lua,javascript': ['re!\w{1}'],
			\ }

"let g:ycm_semantic_triggers =  {
" \   'c' : ['->', '.', 're!\w{2}'],
" \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
" \             're!\[.*\]\s'],
" \   'ocaml' : ['.', '#'],
" \   'cpp,objcpp' : ['->', '.', '::'],
" \   'perl' : ['->'],
" \   'php' : ['->', '::'],
" \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
" \   'ruby' : ['.', '::'],
" \   'lua' : ['.', ':'],
" \   'erlang' : [':'],
" \ }
"
let g:ycm_language_server = [
  \   { 'name': 'vim',
  \     'filetypes': [ 'vim' ],
  \     'cmdline': [ expand( '$HOME/LSP/lsp-examples/viml/node_modules/.bin/vim-language-server' ), '--stdio' ]
  \   }
  \ ]

"let g:ycm_language_server = [
"  \   { 'name': 'vim',
"  \     'filetypes': [ 'vim' ],
"  \     'cmdline': [ 'vim-language-server' , '--stdio' ]
"  \   }
"  \ ]


let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1,
			\ "objc":1,
			\ "sh":1,
			\ "zsh":1,
			\ "zimbu":1,
            \ "python":1,
            \ "vim":1,
			\ }

let g:ycm_seed_identifiers_with_syntax=1

"let g:ycm_server_python_interpreter='/usr/bin/python'
"let g:ycm_server_python_interpreter='/Users/jack/.pyenv/shims/python'
"let g:ycm_server_python_interpreter='/usr/local/bin/python3'

let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

"===============================
" @ycm显示函数原型，参数
" 此选项配合ycm：./install.py --clang-completer
" 而：--clangd-completer.    支持c/c++系列，就可以给出函数提示完美了
" clangd-completer不要此插件
"===============================
"Plugin 'Shougo/echodoc'
set cmdheight=2
let g:echodoc_enable_at_startup = 1


"===============================
"use another snipmate:@ultisnips
"===============================
"Plugin 'SirVer/ultisnips'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-t>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

"===============================
" @outline: for object-c
"===============================
"Plugin 'shougo/unite.vim'
"Plugin 'shougo/unite-outline'
"Plugin 'ryotakato/unite-outline-objc'
"Plugin 'jiangmiao/auto-pairs'

" Unite outline
" nnoremap <leader>oo :Unite outline<cr>

"======= Cocoa.vim =======
" for object-c
"========================
"Plugin 'msanders/cocoa.vim'

"====================
" @swift... for swift
"====================
"---Plugin 'keith/swift.vim'
"Plugin 'jph00/swift-apple'

"Methods for the current file can be listed and navigated to with 
"the |:ListMethods| command.
"
"A template of methods declared in a header file (.h) can be built
"in an implementation file (.m) with |:BuildMethods|
"


" ============================================================================
" Install plugins the first time vim runs

"--if iCanHazVundle == 0
"--    echo "Installing Plugins, please ignore key map error messages"
"--    echo ""
"--    :PluginInstall
"--endif

" ============================================================================


"======================================================================
"   vim basic setting, and Mappings.
"=====================================================================
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
"set cursorline
"set cursorcolumn
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
"set mouse=a
set mouse=n
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
" no  search highlighting 
nnoremap <Space><CR> :nohlsearch<CR>


" syntax highlight on
syntax on

" show line numbers
set number

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
" ctrl - x ctrl - o, 这个单独拉出来，是使用 Vim 的 Omni Completion 
" 功能来自动完成，因为将要用到的 vim-javacomplete2 就依赖于这个功能
"
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
"nmap ,R :RecurGrep 
"nmap ,r :RecurGrepFast 
" mappings to call them with the default word as search text
" nmap ,wR :RecurGrep <cword><CR>
" nmap ,wr :RecurGrepFast <cword><CR>

" use 256 colors when possible
if &term =~? 'mlterm\|xterm\|xterm-256\|screen-256'
	let &t_Co = 256
   " colorscheme py-darcula
   " colorscheme molokai
   colorscheme space-vim-dark
else
    "colorscheme delek
    colorscheme space-vim-dark
endif

"make the background transparent for space-vim-dark
"hi Normal     ctermbg=NONE guibg=NONE
"hi LineNr     ctermbg=NONE guibg=NONE
"hi SignColumn ctermbg=NONE guibg=NONE

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
"set viminfo+=n~/.vim/dirs/viminfo
"vim use viminfo file, nvim donot use it. it use ShaDa.
if !has('nvim')
    set viminfo+=n~/.vim/dirs/viminfo
endif

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

" ===
" === @Window management
" ===
"split window default layout: right / below.
set splitright
set splitbelow

" Disable the default s key
noremap s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap <localleader>sj :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap <localleader>sk :set splitbelow<CR>:split<CR>
noremap <localleader>sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap <localleader>sl :set splitright<CR>:vsplit<CR>

" split the screens for terminal.
noremap <localleader>tj :set splitbelow<CR>:terminal<CR>
noremap <localleader>tk :set nosplitbelow<CR>:terminal<CR>
noremap <localleader>th :set nosplitright<CR>:vert terminal<CR>
noremap <localleader>tl :set splitright<CR>:vert terminal<CR>


" Resize splits with arrow keys
noremap <up> :res +3<CR>
noremap <down> :res -3<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

" Place the two screens up and down
noremap <localleader>s- <C-w>t<C-w>K
" Place the two screens side by side
noremap <localleader>sv <C-w>t<C-w>H

" Press <SPACE> + q to close the window below the current window
noremap <localleader>sq <C-w>j:q<CR>

" Save & quit
noremap Q :q<CR>
noremap S :w<CR>

" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "*y

" ======================
" ===vim @which key
" ======================
let g:maplocalleader = "\<Space>"
let g:mapleader = ","

" let g:which_key_map = {}

" 定义字典变量，这将是后续为具体快捷键定义提示的基础。
" 注意这些行必须在所有具体定义之前，否则会报错，提示变量未定义。
let g:which_key_map1 =  {}
let g:which_key_map2 =  {}
let g:which_key_map3 =  {}


" 01.基于已经存在的快捷键映射，直接使用一个字符串说明介绍信息即可
" You can pass a descriptive text to an existing mapping.

" nnoremap <localleader>a<Tab> :echom "Hello, World"<cr>
" nnoremap <localleader>1 :echom "THis is one"<cr>

" 01. dict for localmapleader ="\<Space>"

" let g:which_key_map1.a = {
"             \ 'name':"Test",
"             \ '<Tab>':"Hello world"
"             \}
" let g:which_key_map1.1 = "One"
"

" nnoremap <localleader>xa :echom "THis is two.1"<cr>
" nnoremap <localleader>xb :echom "THis is two.2"<cr>
" let g:which_key_map1.x = {'name': '+ X'}
" let g:which_key_map1.x.a = "two .1"
" let g:which_key_map1.x.b = "two .2"

"
"help of vim,ranger,tmux, c-hotkey
let g:which_key_map1.h = {
            \ 'name':"+vim-ranger-tmux-c-hotkey-help",
            \ 'v':"vim-help",
            \ 'r':"ranger-help",
            \ 't':"tmux-help",
            \ 'c':"c-hotkey-help",
            \}

let g:which_key_map1.tx = "Ascii text"

"key map 's' for split windows.
let g:which_key_map1.s = {
      \ 'name' : '+split_window',
      \ 'j' : 'split up'    ,
      \ 'k' : 'split below',
      \ 'h' : 'split left',
      \ 'l' : 'split right',
      \ '-' : 'up and down',
      \ 'v' : 'side by side',
      \ 'q' : 'close window below',
      \ }


let g:which_key_map1.t = {
            \ 'name':"+split_terminal",
            \ 'j': "terminal below",
            \ 'k': "terminal up",
            \ 'h': "terminal left",
            \ 'l': "terminal right",
            \}
let g:which_key_map1.g = {
      \ 'name' : '+git',
      \ 'n' : 'git next',
      \ 'p' : 'git pre',
      \ }

" let g:which_key_map1.c = 'copy to clipboard'
" let g:which_key_map1.v = 'paste from clipboard'

"buffer.
let g:which_key_map1.x = 'close buffer'
let g:which_key_map1.n = 'next buffer'
let g:which_key_map1.p = 'prev buffer'


let g:which_key_map1.1 = 'buffer 1'
let g:which_key_map1.2 = 'buffer 2'
let g:which_key_map1.3 = 'buffer 3'
let g:which_key_map1.4 = 'buffer 4'

let g:which_key_map1.5 = 'which_key_ignore'
let g:which_key_map1.6 = 'which_key_ignore'
let g:which_key_map1.7 = 'which_key_ignore'
let g:which_key_map1.8 = 'which_key_ignore'
let g:which_key_map1.9 = 'which_key_ignore'



" 02. dict for mapleader = ","
" key map for LeaderF
let g:which_key_map2.m = 'LeaderF recently files'
let g:which_key_map2.F = 'LeaderF files'
let g:which_key_map2.f = 'LeaderF functions' 
let g:which_key_map2.b = 'LeaderF buffers'
let g:which_key_map2.T = 'LeaderF tags'
let g:which_key_map2.t = 'LeaderF bufTag'
let g:which_key_map2.l = 'LeaderF line'

let g:which_key_map2.u = 'PreviewScroll up'
let g:which_key_map2.d = 'PreviewScroll down'

let g:which_key_map2.g = {
            \ 'name':"+Leaderf_Gtags",
            \ 'r':"search reference",
            \ 'd':"search definition",
            \ 'n':"next search result",
            \ 'p':"previous result",
            \ 'o':"search again",
            \}

let g:which_key_map2.a = {
            \ 'name':"+Code_Align",
            \ '=':"align =",
            \ ':':"align :"
            \}


let g:which_key_map2.c = {
      \ 'name' : '+cscope',
      \ 's' : 'find-this-symbol' ,
      \ 'g' : 'global-definition',
      \ 'c' : 'find-functions-calling-this-function',
      \ 't' : 'text',
      \ 'e' : 'egrep',
      \ 'f' : 'find-this-file',
      \ 'i' : 'find-files-#include-this-file',
      \ 'd' : 'find-functions-called-by-this-function',
      \ 'a' : 'find-places-where-current-symbol-is-assigned',
      \ 'z' : 'find-current-word-in-ctags-database',
      \ }


let g:which_key_map2.e = {'name':'+edit_conf'}
let g:which_key_map2.e.t = 'Edit tmux.conf'
let g:which_key_map2.e.z = 'Edit zshrc'
let g:which_key_map2.e.r = 'Edit ranger.conf'
let g:which_key_map2.e.e = 'Edit .vimrc'
let g:which_key_map2.e.l = 'Error list' 


let g:which_key_map2.ss = 'Source .vimrc'
let g:which_key_map2.vi = 'which_key_ignore' 
let g:which_key_map2.vl = 'which_key_ignore' 
let g:which_key_map2.vp = 'which_key_ignore' 
let g:which_key_map2.vq = 'which_key_ignore' 
let g:which_key_map2.vs = 'which_key_ignore' 
let g:which_key_map2.vx = 'which_key_ignore' 
let g:which_key_map2.vz = 'which_key_ignore' 

" 02. 第二步是注册键位1,2与对应的 dict1,dict2
call which_key#register('<Space>', "g:which_key_map1")
call which_key#register(',', "g:which_key_map2")
" call which_key#register('s', "g:which_key_map3")


nnoremap <silent> <localleader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <localleader> :<c-u>WhichKeyVisual '<Space>'<CR>

nnoremap <silent> <leader>      :<c-u>WhichKey  ','<CR>
vnoremap <silent> <leader>      :<c-u>WhichKeyVisual  ','<CR>

" 除了 leader 和 localleader，如果想要提示其他键也可以：
nnoremap <silent> s :<c-u>WhichKey 's'<CR>


" ============================================================================
" Plugins settings and mappings
" Edit them as you wish.
" ============================================================================


" @Tagbar ----------------------------- 

" toggle tagbar display
map <F4> :TagbarToggle<CR>
" autofocus on tagbar open
let g:tagbar_autofocus = 1
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_width = 20

" @NERDTree ----------------------------- 

" toggle nerdtree display
map <F3> :NERDTreeToggle<CR>
" nmap <Leader>nn :NERDTreeToggle<CR>
" open nerdtree with the current file selected
" nmap <Leader>nf :NERDTreeFind<CR>
" don;t show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$','.swp','\.git']
let NERDTreeShowBookmarks=1
let g:NERDTreeWinSize = 21

let NERDTreeShowLineNumbers=0  "是否显示行号
"let NERDTreeAutoCenter=1
let NERDTreeShowHidden=0  "是否显示隐藏文件



" Tasklist ------------------------------

" show pending tasks list
"map <F2> :TaskList<CR>

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
nmap <leader>el :Errors<CR>
" check also when just opened the file
let g:syntastic_check_on_open = 1
" syntastic checker for javascript.
" eslint is the only tool support JSX.
" If you don't need write JSX, you can use jshint.
" And eslint is slow, but not a hindrance
" let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_cpp_cpplint_exec = 'cpplint'
let g:syntastic_cpp_checkers = ['cpplint']

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

" @Signify ------------------------------

" this first setting decides in which order try to guess your current vcs
" UPDATE it to reflect your preferences, it will speed up opening files
let g:signify_vcs_list = [ 'git', 'hg' ]
" mappings to jump to changed blocks:  git next, git pre
nmap <localleader>gn <plug>(signify-next-hunk)
nmap <localleader>gp <plug>(signify-prev-hunk)
" nicer colors
highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
highlight DiffChange        cterm=bold ctermbg=none ctermfg=227
highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227

" @Window Chooser ------------------------------

" mapping
nmap  -  <Plug>(choosewin)
" show big letters
let g:choosewin_overlay_enable = 1

"---------------------------------------
" -  @Airline -
" 常用快捷键

" ]b / [b       : 切换buffer
" <Leader>1~9   : 切换至对应 num 的buffer
" Ctrl + X      : 关闭当前 buffer
"---------------------------------------
"
let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'
" let g:airline_theme = 'simple'
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
nnoremap [b :bn<CR>
nnoremap ]b :bp<CR> 

" 关闭当前 buffer, <C-x>和现有的vim的光标下数字减小功能，冲突
"noremap <C-x> :w<CR>:bd<CR>
noremap <localleader>x :w<CR>:bd<CR>
nnoremap <localleader>n :bn<CR>
nnoremap <localleader>p :bp<CR> 


" <leader>1~9 切到 buffer1~9
map <localleader>1 :b 1<CR>
map <localleader>2 :b 2<CR>
map <localleader>3 :b 3<CR>
map <localleader>4 :b 4<CR>
map <localleader>5 :b 5<CR>
map <localleader>6 :b 6<CR>
map <localleader>7 :b 7<CR>
map <localleader>8 :b 8<CR>
map <localleader>9 :b 9<CR>



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
        call append(line("."),"# -*- coding: utf-8 -*-")
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
"-------------------------
"map <F10> :call CompileRunGcc()<CR>
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

" ----------------------------------------------------------------------------
" @markdown-preview
" ----------------------------------------------------------------------------

" specify browser to open preview page
" default: ''
"let g:mkdp_browser = "open -a Safari"

if s:darwin
"   function! MKDPSplit(url)
    " let script = '
    " \| ~/Library/ApplicationSupport/iTerm2/iterm2env/versions/*/bin/python3 <<_
    " \| import iterm2
    " \| async def main(connection):
    " \|   app = await iterm2.async_get_app(connection)
    " \|   window = app.current_terminal_window
    " \|   if window is not None:
    " \|     await window.async_set_fullscreen(False)
    " \| iterm2.run_until_complete(main)
    " \| _
    " \| x5050 '.shellescape(a:url)
    " call system(join(split(script, '| '), "\n"))
  " endfunction

  function! MKDPSplit(url)
    call system('x5050 Safari '.shellescape(a:url))
  endfunction

  let g:mkdp_browserfunc = 'MKDPSplit'
  let g:mkdp_open_to_the_world = 1
  let g:mkdp_auto_close = 0
endif

nmap <C-s> <Plug>MarkdownPreview
"nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle


"set dictionary+=$HOME/.vim/dict/english.dict
"set dictionary+=$HOME/.vim/dict/GRE.txt
"enable dictionary complete.
"set complete+=k
"英文单词自动补全快捷键
"Ctrl+X Ctrl+K

"dictionary-customer-complete----------------
"in your .vimrc will <C-X><C-U> use the completion function generated by your file.
"let g:customcpt_funcs = {
"		\ "WPComplete" : [
"			\ $HOME . "/.vim/dict/wordpress.json",
"		\ ]
"	\ }
"
"let g:customcpt_types =  {
"        \ "text" : "WPComplete",
"	\ }
"
"au BufRead,BufNewFile *.txt		setfiletype text
"		
"au FileType text setlocal completefunc=WPComplete



" Vim-xmark-markdown -----------------
" Does not resize nor move the windows
" :Xmark
" 
" " Vim on the left, browser on the right
" :Xmark>
" 
" " On the left
" :Xmark<
" 
" " On the top
" :Xmark+
" 
" " On the bottom
" :Xmark-
" 
" " Reload the page and resize the windows by saving it
" :w
" 
" " Turn off Xmark
" :Xmark!

"=========================================
"@fast modify .vimrc,
""快速修改，快速加载.vimrc
""设置快速编辑.vimrc文件 ,e 编辑.vimrc
" 快速修改vimrc 文件
"=========================================
"Fast reloading of the .vimrc
 map <silent> <leader>ss :source ~/.vimrc<cr>
"Fast editing of .vimrc
 map <silent> <leader>ee :e ~/.vimrc<cr>
"When .vimrc is edited, reload it...
autocmd! bufwritepost .vimrc source ~/.vimrc

"edit tmux/zshrc/range.conf
noremap <leader>et :e ~/.tmux.conf<cr>
noremap <leader>ez :e ~/.zshrc<cr>
noremap <leader>er :e ~/.config/ranger/rc.conf<cr>

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
" @gtags config.
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
"let g:SrcExpl_updateTagsKey = "<F8>" 

" // Set "<F3>" key for displaying the previous definition in the jump list   
" let g:SrcExpl_prevDefKey = "<F6>" 

" // Set "<F4>" key for displaying the next definition in the jump list 
"let g:SrcExpl_nextDefKey = "<F7>"

"highlight Functions of C language...
syn match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cFunctions gui=NONE cterm=bold  ctermfg=blue
 
"====================================
"vim copy to @cliper board
"Under Windows, the * and + registers are equivalent. For X11 systems,
" though, they differ. For X11 systems, * is the selection, 
" and + is the cut buffer (like clipboard).
" the * register for macos is oK.
"====================================

"----"*y    复制到系统剪贴板  
"----"*p    粘贴  
"----"*gp  粘贴并且移动光标到粘贴内容后  
vmap <C-c>  "*y

"---added just for Bob translate software.---
" iterm2 map: comand+c to the following keys.
" comand + c:  copy to @cliper board
"
"vnoremap <ESC>]{1}c~ "*y
"目前，此因素vim可以，但是neovim不行;
"iterm2: send Text with vim特殊字符串："*y
"

"<C-v> 热键是Visual Block可视化块的热键,不能使用
"nmap <C-v>  "*p

"下面的快捷键，不能加冒号, :冒号代码，命令行执行模式
vmap <silent> <leader>c "*y
nmap <silent> <leader>v "*p



"用ctags搜索代码时, 用 ctrl + ] 后，只有一个匹配项直接跳转，有多个则列出所有匹配项选择跳转
"使用 :ts 命令
"在 .vimrc 中添加以下配置：map <c-]> g<c-]>
map <c-]> g<c-]>

"ctags for linux system include header files.
"set tags+=/Volumes/LenovoSSD/unix_tags/systags

"set tags+=/Users/jack/MACDISK02/MacOS_systags/systags
"
"
"==============================================
" @ycm(youcompleteme) 支持代码跳转，跳转到声明和
" 实现。
"主要功能是3个YcmCompleter的subcommands:
"GoToDeclaration
"GoToDefinition
"GoToDefinitionElseDeclaration
"==============================================
" nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>


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
" nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
" nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
" nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
" nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
" nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
" nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
" nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
" nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
" nmap <C-\>a :cs find a <C-R>=expand("<cword>")<CR><CR>


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

"================@fzf 工具==============
"插件主要对 fzf 集成绑定了一些和 vim 相关的功能，比如：
"查找当前 Buffer、Tag、Marks。甚至切换 window,
"更换 vim 主题配色Colors, Rg查询, Lines, BLines,
"https://github.com/hawkinchina/fzf.vim
"
" If installed using Homebrew
set rtp+=/usr/local/opt/fzf
"Plugin 'junegunn/fzf.vim'

" set g:fzf_command_prefix to give the same prefix to the commands
let g:fzf_command_prefix = 'Fzf'

"因为ripgrep是目前性能最好的文本内容搜索工具，所以我们可以自己定义一个命令

"   :Rg  - Start fzf with hidden preview window that can be enabled with "?" key
"   :Rg! - Start fzf in fullscreen and display the preview window above

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

"======================
"@代码缩进指示线配置(代码编辑)
"=====================
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
"let g:indentLine_setColors = 0
"let g:indentLine_color_term = 239
"映射到ctrl+i键
nmap <C-i> :IndentLinesToggle<CR>


"问题：
"使用mac自带的vim无法使用"+y和"+p复制粘贴文本。

"解决办法：
"在.vimrc中添加如下两条语句
"vmap "+y :w !pbcopy<CR><CR>
"nmap "+p :r !pbpaste<CR><CR>

"======================
"@代码折叠配置(代码编辑)
"
"设置代码折叠模式为indent，syntax后
"
" zo: 打开折叠
" zc: 关闭折叠
"
" zM: 打开所有的折叠
" zR: 关闭所有的折叠
"=====================
"如果是写程序，可以按语法(syntax)折叠，或者按缩进(indent)折叠。
"1.方法是 :set foldmethod=syntax 或者是其它方法。
"2.设置好了之后可以用 zM 和 zR 来打开或关闭所有的折叠。zM// folds M-ore.  zR// R-educe the folding.
"3.:h fold-commands 可以用来查看有关折叠的命令，
"4.所有的折叠命令全部由 z 开关。比如 zo 和 zc 用来打来和关闭折叠（助记符是 open 和 close）。
nmap <leader>zi :set fdm=indent<CR>
nmap <leader>zs :set fdm=syntax<CR>


"=====================
" @代码对齐（tabular）
" Plugin 'godlygeek/tabular'
"=====================
" 常用命令:
":Tabularize /,     	逗号（,）对齐，逗号分割的各部分左对齐，逗号两边添加至少 1 个空格
":Tabularize /,/r1	    逗号（,）对齐，逗号分割的各部分右对齐，逗号两边添加至少 1 个空格, rn: 则为逗号两边添加至少n个空格
":Tabularize /,/l1	    逗号（,）对齐，逗号分割的各部分左对齐，逗号两边添加至少 1 个空格
":Tabularize /,/c1	    逗号（,）对齐，逗号分割的各部分中心对齐，逗号两边添加至少 1 个空格
":Tabularize /,/r1c1l0	逗号（,）对齐，第一个逗号前的文本右对齐，添加 1 个空格；逗号居中对齐，添加 1 个空格；逗号后的文本左对齐，不添加空格
":Tabularize /^[^,]*\zs,/r0c0l0	第一个逗号（,）对齐，第一个逗号前的文本右对齐，第一个逗号后的所有文本左对齐
"

":Tab /=    以等号对齐，
":Tab /:    以冒号对齐，
nmap <leader>a= :Tabularize /=<CR>  
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a: :Tabularize /:\zs<CR>
vmap <leader>a: :Tabularize /:\zs<CR>

"=====================
" @代码- 快速添加/删除注释
" Plugin 'scrooloose/nerdcommenter'
"<leader> == Ctrl-\ : 需要修改nerdcommenter.vim
"=====================
let g:NERDSpaceDelims            = 1                                    " 在注释符号后加一个空格
let g:NERDCompactSexyComs        = 1                                    " 紧凑排布多行注释
let g:NERDDefaultAlign           = 'left'                               " 逐行注释左对齐
let g:NERDAltDelims_java         = 1                                    " JAVA 语言使用默认的注释符号
let g:NERDCustomDelimiters       = {'c': {'left': '/*', 'right': '*/'}} " C 语言注释符号
let g:NERDCommentEmptyLines      = 1                                    " 允许空行注释
let g:NERDTrimTrailingWhitespace = 1                                    " 取消注释时删除行尾空格
let g:NERDToggleCheckAllLines    = 1                                    " 检查选中的行操作是否成功
"原文链接：https://blog.csdn.net/bc516125634/article/details/88858097

"注释常用快捷键(注意，可能有冲突, 所以设置为Ctrl-\)
"<leader> == Ctrl-\
"[count]<leader>cc, [count]<leader>cu: 快速注释，快速取消,比较方便
"
"<leader>ca                在可选的注释方式之间切换，比如C/C++ 的块注释/* */和行注释//

"[count]<leader>cc          注释当前行起始的 [count]行 或者 注释 visual mode 选中的文本

"[count]<leader>cn	        注释方式同 <leader>cc，但是强制嵌套

"[count]<leader>c<space>    切换所选行的注释状态。 如果注释了最上面的选定行，则取消注释所有选定行，反之亦然。

"[count]<leader>cm	        使用一组多行注释符注释选定行

"[count]<leader>ci	        单独切换所选行的各行注释状态

"[count]<leader>cs	        使用块格式布局注释掉选定的行。

"<leader>c$	                注释从光标到行尾的当前行。

"<leader>cA                 在行尾添加注释，并切换至插入模式，光标停留在注释符中间

"[count]<leader>cl
"[count]<leader>cb          "注释方式同 <leader>cc，注释符左对齐（<leader>cl）或者两边对齐（<leader>cb）
"
"[count]<leader>cu	        取消选定行的注释


""""""""""""" key map timeouts  组合键超时设置长些
"
" By default Vim will only wait 1 second for each keystroke in a mapping.
" You may find that too short with the above typemaps.  If so, you should
" either turn off mapping timeouts via 'notimeout'.
"
"set notimeout
"
" Or, you can keep timeouts, by uncommenting the timeoutlen line below,
" with your own personal favorite value (in milliseconds):
"
set timeoutlen=1200
"set timeoutlen=500
"
" Either way, since mapping timeout settings by default also set the
" timeouts for multicharacter 'keys codes' (like <F1>), you should also
" set ttimeout and ttimeoutlen: otherwise, you will experience strange
" delays as vim waits for a keystroke after you hit ESC (it will be
" waiting to see if the ESC is actually part of a key code like <F1>).
"
set ttimeout
"
" personally, I find a tenth of a second to work well for key code
" timeouts. If you experience problems and have a slow terminal or network
" connection, set it higher.  If you don't set ttimeoutlen, the value for
" timeoutlent (default: 1000 = 1 second, which is sluggish) is used.
"
set ttimeoutlen=100

"====================
"
" cheat , cppman 多多使用
"
"===================

"""""""""""""""""sdcv set""""""""""""""""""
"Vim 添加英文字典@dict
""""""""""""""""""""""""""""""""""""""""""""
function! Mydict()
  let expl=system('sdcv -n ' .
        \  expand("<cword>"))
  windo if
        \ expand("%")=="diCt-tmp" |
        \ q!|endif
  rightbelow 30vsp diCt-tmp
  setlocal buftype=nofile bufhidden=hide noswapfile
  1s/^/\=expl/
  1
endfunction
nmap <leader>dic :call Mydict()<CR>
" let g:which_key_map2.dic = "call dictionary"

"======================
"python help"
"======================
nnoremap <S-h> :exec "!python -c \"help('".expand("<cword>")."')\"" <CR>
"nnoremap <buffer> H :<C-u>execute "!pydoc3 " . expand("<cword>")<CR>

"======================
"vim  help: en/cn
" : help@en  switch to en by manual 
"======================
"set helplang=en

"=======================
" vsplit把新文件放在右边窗口
"=======================
set splitright


"if has("termguicolors")
"    " fix bug for vim
""    set t_8f=^[[38;2;%lu;%lu;%lum
""    set t_8b=^[[48;2;%lu;%lu;%lum
"
"    " enable true color
"    set termguicolors
"endif

 " enable true color
 set termguicolors

"========================================
" Good vim Skill 01: 放置placeholder占位符
" press space twice to jump to the next '<++>', 
" and edit it.
"========================================
" 先选中4行：执行：normal A(<++>), 在4行尾添加(<++>)
"apple(<++>)
"orange(<++>)
"banana(<++>)
"jack(<++>)
"
"双击空格键，就会把第一个<++>进行修改，
"再次双击空格，修改下面的<++>
"
"apple(good)
"orange(bad)
"banana(good)
"jack(bad)
map <Space><Space> <Esc>/<++><CR>:nohlsearch<CR>c4l

"=====
" ===call figlet(Ascii text)
"=====
" ➜  /Users/jack/.vim/bundle >figlet vim
"        _
" __   _(_)_ __ ___
" \ \ / / | '_ ` _ \
"  \ V /| | | | | | |
  " \_/ |_|_| |_| |_|

map <localleader>tx :r !figlet

"====================================================================================
"通过在vimrc配置文件中增加以下自定义命令，可以使用cupsfilter命令，来直接生成PDF文件：
"====================================================================================
command! Print2PDF !cupsfilter % > %:r.pdf 2> /dev/null

"
" vim scrolling very slowly(j/k)
"
set re=1
set ttyfast
set lazyredraw

"====================== Open the help jpg/pdf/ranger/tmux ==============
" check the jpg of vim help.
noremap <localleader>hv :!open ~/Desktop/vim-cheat-sheet.png
" noremap vim2 :!open ~/Documents/01\ My\ Document/03\ 资料文件夹/vim\ 使用/vim_cheat_sheet_for_programmers_print.pdf

" chech help of c-support-language.
noremap <localleader>hc :!open ~/Desktop/c-hotkeys.pdf

"check help of ranger
noremap <localleader>hr :!open ~/Documents/01\ My\ Document/03\ 资料文件夹/vim\ 使用/ranger_cheatsheet.png
"check help of tmux
noremap <localleader>ht :!open http://www.tmuxcheatsheet.com

"====
"==== workbench for mysql
"====
" let g:sw_exe = '/Users/jack/Workbench-Build125/sqlwbconsole.sh'
" let g:sw_config_dir = '/Users/jack/.sqlworkbench/'
" let g:sw_delete_tmp = 0
" let g:sw_save_resultsets = 1
" let g:sw_log_to_file = 1
" let g:sw_cache = '~/.cache/sw/'

"========@emmet-vim
"新建一个html文件后,输入html:5,然后按control+y,再按,即可生成
" #####基本规则:
" 1. E 代表HTML标签
" 2. E#id 代表标签E有id属性
" 3. E.class 代表E有class属性
" 4. E[attr=foo] 代表某个特定属性
" 5. E{info} 代表标签E包含的内容是info
" 6. E>N 代表N是E的子元素
" 7. E+N 代表N是E的同级元素
" 8. E^N 代表N是E的上级元素
"========



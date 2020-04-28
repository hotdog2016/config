
" map"{{{

let mapleader = " "
nnoremap <leader>p 1<C-G>
nnoremap <F4> :g/^\s*$/d<CR> 
nnoremap <leader>e $
nnoremap <leader>a 0
vnoremap <leader>e $
vnoremap <leader>a 0


nnoremap <leader>i :set ic<CR>
nnoremap <leader>I :set noic<CR>
omapclear
nmap <leader><leader>y "+y
nmap <leader><leader>p "+p
nmap <leader>r :source ~/.config/nvim/init.vim<CR> :AirlineRefresh<CR>

nmap     W   :wa<CR>
nmap     Q  :qa<CR>
nmap <leader>b :bd<CR>
nmap <leader>q :close<CR>
inoremap jk <Esc>

nnoremap <leader>g %

"inoremap {} {}<Esc>i
"inoremap () ()<Esc>i
"inoremap [] []<Esc>i
inoremap <> <><Esc>i
"inoremap "" ""<Esc>i
"inoremap '' ''<Esc>i

set pastetoggle=<F5>

noremap <LEADER><CR> :nohlsearch<CR>

" Disable the default s key
"noremap s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap <silent> <leader>sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap <silent> <leader>sj :set splitbelow<CR>:split<CR>
noremap <silent> <leader>sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap <silent> <leader>sl :set splitright<CR>:vsplit<CR>


noremap <leader>w <C-w>w
noremap <leader>k <C-w>k
noremap <leader>j <C-w>j
noremap <leader>h <C-w>h
noremap <leader>l <C-w>l

map <M-j> 5j
map <M-k> 5k
map <M-h> 5h
map <M-l> 5l

map <M-down> :res +5<CR>
map <M-up> :res -5<CR>
map <M-left> :vertical resize-5<CR>
map <M-right> :vertical resize+5<CR>
"}}}

" {{{ Markdown Settings
" Snippets
source ~/.config/nvim/Ultisnips/md-snippets.vim
" auto spell
" }}}
"{{{ vimwiki
let g:vimwiki_text_ignore_newline = 0
let g:vimwiki_list_ignore_newline = 0
nnoremap F3 : VimwikiAll2HTML<cr>
"}}}

" Set""{{{
syntax on                      "set syntax highlight
filetype on                    "Enable filetype check
filetype plugin on             "auto chose plugins
filetype indent on             "auto chose indent

autocmd BufRead,BufNewFile *.md setlocal spell


set cursorline
set nu
set relativenumber
set viminfo+=!                 "保存全局变量
set iskeyword+=_,$,@,%,#,-     "带有如下符号的单词不要被换行分割
set linespace=0                "字符间插入的像素行数目
set wildmenu                   "增强模式中的命令行自动完成操作
set backspace=2                "使回格键（backspace）正常处理indent, eol, start等
"set whichwrap+=<,>,h,l         "允许backspace和光标键跨越行边界
"set magic                      "设置魔术
set report=0                   "通过使用: commands命令，告诉我们文件的哪一行被改变过 
set showmatch                  "高亮显示匹配的括号
set showcmd                    "输入的命令显示出来，看的清楚些
set completeopt-=preview       "set intelligent complete""""
set clipboard+=unnamedplus      "clipboard 
set hlsearch                   "set search string highlight
set nocompatible               "close compatible mode
set confirm                    "If you do something vim will ask for you Y/N 
set pastetoggle=<f7>           "set paste toggle mode
set cmdheight=1                "CmdLine is following one line of StatusLine
set scrolloff=4                "If cursor achive bottom ,it will keep '4' lines with StatusLine

set hidden					   "about undo
"=============================Backup
set backup
set backupext=.bak
set backupdir=~/.config/nvim/.bakup 
"=============================Indent
"set cindent
set smartindent
"set expandtab
set ts=4
set listchars=tab:>>

autocmd FileType c,cpp set shiftwidth=2 | set expandtab

"=============================Encode
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
"=============================flod
set foldmethod=marker
set foldcolumn=0
set foldlevel=100
set foldopen-=search
set foldopen-=undo
"=============================diff
set diffopt=vertical
"=============================
set showtabline=0 "Don't show tabs
"""}}}

"{{{ Plug
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

""Plugin 'echofunc.vim'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
" Multiple Plug commands can be written in a single line using | separators
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'wannesm/wmgraphviz.vim'
Plug 'bling/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline-themes'
"Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'junegunn/fzf.vim'
"Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-fugitive'

Plug 'vimwiki/vimwiki'

"colorschem
Plug 'taniarascia/new-moon.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'

" Taglist
Plug 'liuchengxu/vista.vim'

" Genreal Highlighter
Plug 'jaxbot/semantic-highlight.vim'
Plug 'chrisbra/Colorizer' " Show colors with :ColorHighlight

"markdown"
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'dkarter/bullets.vim', { 'for' :['markdown', 'vim-plug'] }

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"undotree
Plug 'mbbill/undotree'
"Snippets"
Plug 'mhinz/vim-startify'
"coc"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"multiple cursors"
Plug 'terryma/vim-multiple-cursors'
"surround"
Plug 'tpope/vim-surround'
Plug 'MattesGroeger/vim-bookmarks'

"autoformat"
Plug 'Chiel92/vim-autoformat'

Plug 'Raimondi/delimitMate'
Plug 't9md/vim-choosewin'
Plug 'voldikss/vim-floaterm'
"Plug 'neomake/neomake'

Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'

Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'

Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'dense-analysis/ale'
Plug 'tpope/vim-unimpaired'



"Plug 'yianwillis/vimcdoc'
"PlugInstall 	Install plugins
"PlugUpdate 	Install or update plugins
"PlugClean[!]	Remove unlisted plugins (bang version will clean without prompt)
"PlugUpgrade	Upgrade vim-plug itself
"PlugStatus	Check the status of plugins
"PlugDiff	Examine changes from the previous update and the pending changes
"PlugSnapshot[!] [output path]	Generate script for restoring the current snapshot of the plugins
call plug#end()
"}}}

"{{{colorschem
set background=dark
colorscheme gruvbox 
"}}}
"table mode toggle{{{

let g:table_mode_corner='+'

nnoremap <leader>tm : TableModeToggle<CR>
"}}}
"
"air-line"{{{
let g:airline_theme="gruvbox" 
let g:airline_symbols_ascii=1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#ctrlspace#enabled = 1
let g:airline#extensions#coc#enabled =1
let g:CtrlSpaceStatuslineFunction = "airline#extensions#ctrlspace#statusline()"
let g:airline#extensions#branch#enabled = 0
let g:airline_section_c = airline#section#create(['readonly',' ','%{getcwd()}/%t'])
let g:airline_section_y = airline#section#create([''])
let g:airline_section_z = airline#section#create (['%l',',','%L' , '%3v'])
"let g:airline#extensions#branch#empty_message = ''
"let g:airline#extensions#branch#displayed_head_limit = 10
"let g:airline#extensions#branch#format = 2

"}}}
"

"nerdtree"{{{
"nmap <leader><leader>nt :NERDTreeToggle<CR>
"let NERDChristmasTree=1
"let NERDTreeWinSize=30
"let NERDTreeChDirMode=2
"let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
"let NERDTreeShowBookmarks=1
"let NERDTreeAutoDeleteBuffer=1
"let NERDTreeDirArrowExpandable=">"
"let NERDTreeDirArrowCollapsible="v"
"let NERDTreeWinPos = "left"
"}}}

"wmgrahviz"{{{
function! Headerdot()
		call setline(1,"//usr/bin/dot")
		call append(1,"digraph G{")
		call append(2,"")
		call append(3,"}")
		normal 3G
endf
autocmd bufnewfile *.dot call Headerdot()
"graphviz
let g:WMGraphviz_dot = "dot"
let g:WMGraphviz_output = "svg"
let g:WMGraphviz_viewer = "xdg-open"
let g:WMGraphviz_shelloptions = ""
""nmap <F9> :w<CR>:!dot -Tsvg -o %<.svg % && start %<.svg<CR>  
nmap <F9> :w<CR>:!dot -Tpdf -o %<.pdf %<CR>
nmap <Leader>lv :w<CR>:GraphvizShow<CR>:!rm %<.svg
"}}}

" fzf{{{
"<Leader>f在当前目录搜索文件
"
"nnoremap <silent><Leader>f :Files<CR>
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \ 'rg --column --line-number --no-heading --color=always -g "!cscope.*" --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

command! -bang ProjectFiles call fzf#vim#files(fnamemodify(finddir('.git','.;'),':p:h:h'), <bang>0)
nnoremap <silent><Leader>fp :ProjectFiles<CR>

let g:fzf_layout = { 'down': '~40%' }

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_history_dir = '~/.local/share/fzf-history'
" [Buffers] 如果可能跳到已存在窗口
let g:fzf_buffers_jump = 1
" [[B]Commits] 自定义被'git log'使用的选项
let g:fzf_commits_log_options = 
            \'--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
" [Tags] 定义用来产生tag的命令
let g:fzf_tags_command = 'ctags -R'
" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
"========}}}

" YouCompleteMe"{{{
"let g:ycm_python_binary_path  = '/usr/bin/python3.7'
"let g:ycm_use_clangd = 0
"let g:ycm_auto_trigger = 0
"let g:ycm_key_invoke_completion = '<C-n>'
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_collect_identifiers_from_tags_files=1
"let g:ycm_server_log_level = 'debug'
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_global_ycm_extra_conf = '~/' 
"let g:ycm_collect_identifiers_from_tag_files = 1  
"let g:ycm_min_num_of_chars_for_completion=4
"let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']
"let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
"let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
"let g:ycm_use_ultisnips_completer = 1 "提示UltiSnips
"let g:ycm_cache_omnifunc = 0        " 禁止缓存匹配项,每次都重新生成匹配项
""注释和字符串中的文字也会被收入补全
"let g:ycm_collect_identifiers_from_comments_and_strings = 0   
"let g:ycm_seed_identifiers_with_syntax = 0
"let g:ycm_enable_diagnostic_signs = 0
"let g:ycm_enable_diagnostic_highlighting = 0
"let g:ycm_error_symbol = '>>'
"let g:ycm_warning_symbol = '>*'
"let g:ycm_add_preview_to_completeopt = 0
"let g:ycm_semantic_triggers =  {
"  \   'c' : ['->', '.'],
"  \   'cpp,objcpp' : ['->', '.', '::'],
"  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
"  \ }
""""}}}

" Vista.vim{{{
noremap <leader>v :Vista!!<CR>
noremap <silent><C-t> :Vista finder<CR>
function! NearestMethodOrFunction() abort
	return get(b:, 'vista_nearest_method_or_function', '')
endfunction
set statusline+=%{NearestMethodOrFunction()}
"autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
" e.g., more compact: ["▸ ", ""]
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista#renderer#enable_icon = 0
"let g:vista_default_executive = 'ctags'
" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']
"""}}}

" {{{ Undotree
if has('persistent_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo
endif
noremap <leader>u :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
" }}}

" {{{ vim-easymotion
let g:EasyMotion_smartcase = 1
" 'f{char} to move to {char}
" Gif config
map fl <Plug>(easymotion-lineforward)
map fj <Plug>(easymotion-j)
map fk <Plug>(easymotion-k)
map fh <Plug>(easymotion-linebackward)

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

nmap ff <Plug>(easymotion-bd-f2)



"}}}
"  Ultisnips{{{
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/Ultisnips/']
silent! au BufEnter,BufRead,BufNewFile * silent! unmap <c-r>
""}}}
"
"  MarkdownPreview {{{
imap  <silent> <F8> <Plug>:MarkdownPreview<CR>
nmap  <silent> <F8> <Plug>MarkdownPreview<CR>
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
			\ 'mkit': {},
			\ 'katex': {},
			\ 'uml': {},
			\ 'maid': {},
			\ 'disable_sync_scroll': 0,
			\ 'sync_scroll_type': 'middle',
			\ 'hide_yaml_meta': 1
			\ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
"}}}

"{{{##### auto fcitx  ###########
let g:input_toggle = 1
function! Fcitx2en()
   let s:input_status = system("fcitx-remote")
   if s:input_status == 2
      let g:input_toggle = 1
      let l:a = system("fcitx-remote -c")
   endif
endfunction

function! Fcitx2zh()
   let s:input_status = system("fcitx-remote")
   if s:input_status != 2 && g:input_toggle == 1
      let l:a = system("fcitx-remote -o")
      let g:input_toggle = 0
   endif
endfunction

set ttimeoutlen=150
"退出插入模式
autocmd InsertLeave * call Fcitx2en()
"进入插入模式
"autocmd InsertEnter * call Fcitx2zh()
"}}}##### auto fcitx end ######
"
"{{{ coc
" Give more space for displaying messages.
"set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
"" diagnostics appear/become resolved.
""set signcolumn=yes

let g:coc_global_extensions = [
			\'coc-python'
			\, 'coc-vimlsp'
			\, 'coc-json'
			\, 'coc-yank'
			\, 'coc-gitignore'
			\, 'coc-lists'
			\, 'coc-git'
			\, 'coc-explorer'
			\, 'coc-pyright'
			\, 'coc-translator'
			\, 'coc-todolist'
			\]

inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]	=~ '\s'
endfunction

inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <leader>nt :CocCommand explorer<CR>

nmap <leader>rn <Plug>(coc-rename)

" coc-translator
nmap ts <Plug>(coc-translator-p)


" coctodolist
nnoremap <leader>tn :CocCommand todolist.create<CR>
nnoremap <leader>tl :CocList todolist<CR>
nnoremap <leader>tu :CocCommand todolist.download<CR>:CocCommand todolist.upload<CR>
" coc-tasks
"
noremap <silent> T :CocList tasks<CR>
nnoremap <silent><leader>cl :CocList<CR>
nnoremap <silent><leader>cr :CocListResume<CR>
nnoremap <silent><leader>cb :CocList buffers<CR>
nnoremap <silent><leader>cc :CocList commands<CR>
nnoremap <silent><leader>cd :CocList diagnostics<CR>
nnoremap <silent><leader>ce :CocList extensions<CR>
nnoremap <silent><leader>co :CocList outline<CR>
nnoremap <silent><leader>cs :CocList symbols<CR>
nnoremap <silent><leader>cf :CocList files<CR>
nnoremap <silent><leader>cy :<C-u>CocList -A --normal yank<cr>

"}}}
"
"{{{ multiple cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<C-f>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-f>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-f>'
let g:multi_cursor_prev_key            = '<C-b>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
"}}}
"{{{ autoformat"
let g:formatterpath = [ '/usr/sbin' ]
"}}}
"delimitMate{{{
let delimitMate_matchpairs = "(:),[:],{:}"
au FileType vim,c let b:delimitMate_matchpairs = "(:),[:],{:}"
let delimitMate_expand_space = 1
let delimitMate_expand_cr = 1
"}}}
"custom function{{{

"工程目录的设置，通过寻找.git目录来确定当前工程的根目录。
"
"找寻根目录主要是为了:
"(1)在根目录上递归的向下查找某个文件，或者是某个文件中的
"某个字符串。
"(2)更新tags文件和cscope文件。
let g:ProjectDir = fnamemodify(finddir('.git','.;'),':p:h:h') 
"change to project dir
nmap <F2> :call ChangeToPrjDir()<cr>
function! ChangeToPrjDir()
	let dir = g:ProjectDir
	execute ":cd  " .dir
endfunction
"更新plug插件和Coc插件
"
nmap <F6> :call UpdatePluginandCoc()<cr>
function! UpdatePluginandCoc()
		execute "PlugUpgrade"
		execute "PlugUpdate"
		execute "CocUpdate"
endfunction


"}}}
"{{{ floaterm
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F10>'


"}}}
"{{{
nmap  -  <Plug>(choosewin)
"}}}


"}}}

"{{{
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg']
let g:asyncrun_open = 6
nnoremap <F11> AsyncTask file-build<cr> 
nnoremap <F12> AsyncTask file-run<cr> 
"}}}
"
"{{{ gutentags
" gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 同时开启 ctags 和 gtags 支持：
let g:gutentags_modules = []
if executable('ctags')
	let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
	let g:gutentags_modules += ['gtags_cscope']
endif

let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
" 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录

" 配置 ctags 的参数，老的 Exuberant-ctags 不能有 --extra=+q，注意
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 如果使用 universal ctags 需要增加下面一行，老的 Exuberant-ctags 不能加下一行
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']

" 禁用 gutentags 自动加载 gtags 数据库的行为
let g:gutentags_auto_add_gtags_cscope = 0

let g:gutentags_define_advanced_commands = 1

noremap <silent> <leader>gs :GscopeFind s <C-R><C-W><cr>
noremap <silent> <leader>gg :GscopeFind g <C-R><C-W><cr>
noremap <silent> <leader>gc :GscopeFind c <C-R><C-W><cr>
noremap <silent> <leader>gt :GscopeFind t <C-R><C-W><cr>
noremap <silent> <leader>ge :GscopeFind e <C-R><C-W><cr>
noremap <silent> <leader>gf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>gi :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>gd :GscopeFind d <C-R><C-W><cr>
noremap <silent> <leader>ga :GscopeFind a <C-R><C-W><cr>
noremap <silent> <leader>gz :GscopeFind z <C-R><C-W><cr>

"}}}
"
""{{{ leaderf
let g:Lf_ShortcutF = '<c-P>'
let g:Lf_ShortcutB = '<m-n>'

noremap <c-n> :LeaderfMru<cr>
noremap <m-p> :LeaderfFunction<cr>
noremap <m-m> :LeaderfTag<cr>

let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }

let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}


"" don't show the help in normal mode
"let g:Lf_HideHelp = 1
"let g:Lf_UseCache = 0
"let g:Lf_UseVersionControlTool = 0
"let g:Lf_IgnoreCurrentBufferName = 1
"" popup mode
"let g:Lf_WindowPosition = 'popup'
"let g:Lf_PreviewInPopup = 1
"let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
"let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }
"
"let g:Lf_ShortcutF = "<leader>f"
"
"noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
"noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
"noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
"noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
"
"noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
"noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
"
"" search visually selected text literally
"xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
"noremap go :<C-U>Leaderf! rg --recall<CR>
"
"" should use `Leaderf gtags --update` first
"let g:Lf_GtagsAutoGenerate = 0
"let g:Lf_Gtagslabel = 'native-pygments'
"let g:Lf_RootMarkers = ['.git']
"let g:Lf_WorkingDirectoryMode = 'Ac'
"
"let g:Lf_MruWildIgnore = {
"        \ 'dir': ['.git'],
"        \ 'file': []
"        \}
"noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
"noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
"noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
"noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
"noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>


"}}}
"{{{ ale
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_linters =  {'c':['clang'],
				     \'cpp':['clang']
					 \}
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''
"}}}

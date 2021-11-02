" set nocompatible " 关闭兼容模式
" filetype off " 关闭自动补全
set number " 打开行号设置
set encoding=utf-8
set ruler " 光标信息
set hlsearch " 高亮显示搜索
set incsearch " 边搜索边高亮
set ignorecase " 忽略大小写
set cursorline " 突出当前显示行

set ts=4 " tab 占4个字符宽度 
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent " 复制上一行的缩进
" expandtab " tab为4个空格

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype json setlocal ts=2 sw=2 expandtab

syntax enable " 语法高亮
syntax on

" set t_Co=256
" 开启24bit的颜色，开启这个颜色会更漂亮一些
set termguicolors
set background=dark
" colorscheme desert
" packadd! dracula
" colorscheme one
" 最后加载 gruvbox 主题
autocmd vimenter * colorscheme gruvbox


let g:airline_theme='one'
" 取消备份
set nobackup
set noswapfile
" 退出插入模式自动保存
" au InsertLeave *.go,*.java,*.c,*.cpp,*.js,*.html,*.css,*.tpl,*.sh,*.bat,*.conf write

let mapleader=";" " 定义快捷键前缀,即<Leader>

" ==== 系统剪切板复制粘贴 ====
" v 模式下复制内容到系统剪切板
vmap <Leader>c "+yy
" n 模式下复制一行到系统剪切板
nmap <Leader>c "+yy
" n 模式下粘贴系统剪切板的内容
nmap <Leader>v "+p

" 解决插入模式下delete/backspce键失效问题
set backspace=2


" 插件配置
call plug#begin('~/.vim/plugged')

" vim 状态栏
Plug 'vim-airline/vim-airline'
Plug 'github/copilot.vim'
Plug 'vim-airline/vim-airline-themes'

" 左侧导航目录
Plug 'scrooloose/nerdtree'
" 侧边栏美化(需要下载字体,暂时不用)
" Plug 'ryanoasis/vim-devicons'

" 文件搜索插件
Plug 'kien/ctrlp.vim'
" 方法大纲搜索
Plug 'tacahiroy/ctrlp-funky'

" 大纲
Plug 'majutsushi/tagbar'

" editorconfig 插件
Plug 'editorconfig/editorconfig-vim'

" 快速注释插件
Plug 'scrooloose/nerdcommenter'
" vim 文件左侧 git 状态
Plug 'airblade/vim-gitgutter'

" git 插件
Plug 'tpope/vim-fugitive'

" go 语言相关插件
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'volgar1x/vim-gocode'

" 主题
Plug 'dracula/vim', { 'as': 'dracula' }
" colorscheme one 
Plug 'rakr/vim-one'
Plug 'morhetz/gruvbox'


" 可以在导航目录中看到 git 版本信息
Plug 'Xuyuanp/nerdtree-git-plugin'

" 自动补全括号的插件，包括小括号，中括号，以及花括号
" Plug 'jiangmiao/auto-pairs'

" 可以使 nerdtree Tab 标签的名称更友好些
" Plug 'jistr/vim-nerdtree-tabs'

" html 神器
Plug 'mattn/emmet-vim'

" 补全插件
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" markdown 插件


" rust 插件
Plug 'rust-lang/rust.vim'

" 翻译插件 (按需使用)
" Plug 'JavaHello/vim-fy'

call plug#end()


"==============================================================================
" nerdtree 文件列表插件配置
"==============================================================================
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" 显示行号
" let NERDTreeShowLineNumbers=1
" 设置宽度
let NERDTreeWinSize=31
" 自动打开 nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" 使用 vim 而不是 vim .
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 打开任意文件启动 nerdtree 我不需要
" autocmd vimenter * NERDTree
" 打开 vim 文件及显示书签列表
" let NERDTreeShowBookmarks=2
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']



"==============================================================================
" ctrlp.vim 文件搜索插件配置
"==============================================================================
" 快捷键配置
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" 设置工作目录读取方式
let g:ctrlp_working_path_mode = 'ra'
" 忽略搜索文件
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {  
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|target|node_modules)$',  
  \ 'file': '\v\.(exe|so|dll|class)$',  
  \ 'link': 'some_bad_symbolic_links',  
  \ }


"==============================================================================
" ctrlp-funky 插件配置
"==============================================================================
map <F6> :CtrlPFunky<cr>
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_syntax_highlight = 1 



"==============================================================================
" tagbar 插件配置
"==============================================================================
" map <F5> :TagbarToggle<cr>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }


"==============================================================================
" vim-airline 配置
"==============================================================================
" 启用显示缓冲区
let g:airline#extensions#tabline#enabled = 1


"==============================================================================
" nerdocmmenter 注释插件配置
"==============================================================================
let g:NERDSpaceDelims = 1 " 默认情况下，在注释分割符后添加空格
let g:NERDCompactSexyComs = 1 " 使用紧凑语法进行美化的多行s注释
let g:NERDDefaultAlign = 'left' " 让对齐向注释分割符向左而不是跟随代码缩进
let g:NERDAltDelims_java = 1 " 默认情况，将语言设置为使用其备用分割符
let g:NERDCustomDelimiters = { 'c': { 'left': '/**', 'right': '*/'}} " 添加自定义格式
let g:NERDCommentEmptyLines = 1 " 允许注释和反转空行(在注释区域时很有用)
let g:NERDTrimTrailingWhitespace = 1 " 在取消s注释时启用尾部空格的修剪
let g:NERDToggleCheckAllLines = 1 " 启用检查是否以注释

"==============================================================================
" vim-go 插件
"==============================================================================
let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1

let g:godef_split=2



"==============================================================================
"  nerdtree-git-plugin 插件
"==============================================================================
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:NERDTreeShowIgnoredStatus = 1



"==============================================================================
"  coc.nvim 插件
"==============================================================================
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>




"==============================================================================
"  gui 配置
"==============================================================================
if has('gui_running')
    set guifont=Cascadia\ Mono\ PL\ 13
endif


"==============================================================================
"  fy 插件配置 (按需使用)
"==============================================================================
" vnoremap <silent> <C-T> :<C-u>Fyv<CR>
" nnoremap <silent> <C-T> :<C-u>Fyc<CR>



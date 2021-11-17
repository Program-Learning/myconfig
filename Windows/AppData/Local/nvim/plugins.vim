
" 插件配置
call plug#begin('~/.vim/plugged')

" vim 状态栏
Plug 'github/copilot.vim'
Plug 'vim-airline/vim-airline'
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


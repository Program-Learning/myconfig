call plug#begin('~/.config/vim_plug/plugged')
    Plug 'crusoexia/vim-monokai'
    " copilot 
    Plug 'github/copilot.vim'
    " go 语言相关插件
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    " Plug 'volgar1x/vim-gocode'
    Plug 'lambdalisue/suda.vim' " 使用 :sudow 以root身份保存文件
    Plug 'luochen1990/rainbow'
    Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown'] }
    " 文件搜索插件
    Plug 'kien/ctrlp.vim'
    " 方法大纲搜索
    Plug 'tacahiroy/ctrlp-funky'
    " Git
    Plug 'kdheepak/lazygit.nvim' " need nvim 0.5
    " Genreal Highlighter
    Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
    Plug 'RRethy/vim-illuminate'
    " vim 文件左侧 git 状态
    Plug 'airblade/vim-gitgutter'

    " editorconfig 插件
    Plug 'editorconfig/editorconfig-vim'
    " 主题
    Plug 'dracula/vim', { 'as': 'dracula' }

    " Autoformat
    Plug 'google/vim-maktaba'
    Plug 'google/vim-glaive'
    Plug 'google/vim-codefmt'
    Plug 'puremourning/vimspector'
    Plug 'honza/vim-snippets'
    Plug 'bfrg/vim-cpp-modern'

    " git 插件
    Plug 'tpope/vim-fugitive'

    Plug 'vim-python/python-syntax'
    Plug 'vim-scripts/ctags.vim'
    Plug 'tmux-plugins/vim-tmux-focus-events'
    Plug 'vim-airline/vim-airline' " vim 状态栏
    Plug 'vim-airline/vim-airline-themes' "airline 的主题
    " 快速注释插件
    Plug 'scrooloose/nerdcommenter'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'sainnhe/gruvbox-material'
    Plug 'Yggdroot/indentLine'
    " 左侧导航目录
    Plug 'preservim/nerdtree'
    " 可以在导航目录中看到 git 版本信息
    Plug 'Xuyuanp/nerdtree-git-plugin'"
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " 大纲
    Plug 'majutsushi/tagbar'

    " 自动补全括号的插件，包括小括号，中括号，以及花括号
    " Plug 'jiangmiao/auto-pairs'

    " 可以使 nerdtree Tab 标签的名称更友好些
    " Plug 'jistr/vim-nerdtree-tabs'
    
    " markdown 插件

    " 翻译插件 (按需使用)
    " Plug 'JavaHello/vim-fy'
    
    " html 神器
    Plug 'mattn/emmet-vim'

    " rust 插件
    Plug 'rust-lang/rust.vim'

    " colorscheme one 
    Plug 'rakr/vim-one'
    Plug 'morhetz/gruvbox'
    " 侧边栏美化(需要下载字体,暂时不用)
    " Plug 'ryanoasis/vim-devicons'

call plug#end()


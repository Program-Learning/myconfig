call plug#begin('~/.config/vim_plug/plugged')
    Plug 'crusoexia/vim-monokai'"
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'lambdalisue/suda.vim' " 使用 :sudow 以root身份保存文件
    Plug 'luochen1990/rainbow'
    Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown'] }
    " Git
    Plug 'kdheepak/lazygit.nvim' " need nvim 0.5
    " Genreal Highlighter
    Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
    Plug 'RRethy/vim-illuminate'
    " Autoformat
    Plug 'google/vim-maktaba'
    Plug 'google/vim-glaive'
    Plug 'google/vim-codefmt'
    Plug 'puremourning/vimspector'
    Plug 'honza/vim-snippets'
    Plug 'bfrg/vim-cpp-modern'"
    Plug 'tpope/vim-fugitive'"
    Plug 'vim-python/python-syntax'"
    Plug 'vim-scripts/ctags.vim'"
    Plug 'tmux-plugins/vim-tmux-focus-events'"
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes' "airline 的主题
    Plug 'scrooloose/nerdcommenter'
    Plug 'octol/vim-cpp-enhanced-highlight'"
    Plug 'sainnhe/gruvbox-material'"
    Plug 'Yggdroot/indentLine'"
    Plug 'preservim/nerdtree'"
    Plug 'Xuyuanp/nerdtree-git-plugin'"
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'majutsushi/tagbar'"
    " Plug 'morhetz/gruvbox'
call plug#end()
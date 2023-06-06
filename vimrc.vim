syntax enable
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,gb2312,gb18030,cp936,ucs-bom
set relativenumber
set showmatch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set autoindent
set confirm
set paste
set laststatus=2
set hlsearch
set incsearch
set gdefault
set ruler
set backspace=2
set nocompatible
set noerrorbells
colorscheme default
autocmd BufWritePost $MYVIMRC source $MYVIMRC
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul


"source ~/.vim/plugins.vim
"source ~/.vim/keymaps.vim

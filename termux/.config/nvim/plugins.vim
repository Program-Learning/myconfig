
call plug#begin('~/.config/nvim/plugged')

" 主题
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline-themes'

"状态栏
Plug 'vim-airline/vim-airline'

"高亮
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' } "显示颜色
Plug 'RRethy/vim-illuminate' "显示相同的单词
Plug 'cespare/vim-toml' "toml高亮

"补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"git
Plug 'theniceboy/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
Plug 'fszymanski/fzf-gitignore', { 'do': ':UpdateRemotePlugins' }
Plug 'airblade/vim-gitgutter'
Plug 'cohama/agit.vim'

"Markdown
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }

Plug 'voldikss/vim-floaterm' "浮动终端

Plug 'luochen1990/rainbow' "彩色括号
Plug 'Yggdroot/indentLine' "缩进显示
Plug 'puremourning/vimspector' "调试

call plug#end()

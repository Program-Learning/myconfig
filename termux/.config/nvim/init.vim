
"自动安装插件
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


source ~/.config/nvim/plugins.vim "应用插件
source ~/.config/nvim/config.vim "应用配置文件
source ~/.config/nvim/keyboard.vim "应用键位

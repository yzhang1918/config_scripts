git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc ~/.vimrc
vim +PluginInstall +qall

if [ "$(uname)" == "Darwin" ]; then
    brew install ctags
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux"]; then
    echo 'linux'
    apt install -y exuberant-ctags
fi


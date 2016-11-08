## install ##
* mv govim .vim
* ln -s .vim/vimrc .vimrc

# install YouCompleteMe
* git clone --recursive https://github.com/Valloric/YouCompleteMe.git
* git submodule update --init --recursive
* cd .vim/bundle/YouCompleteMe
* ./install.py --gocode-completer

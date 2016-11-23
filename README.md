## install ##
* mv govim .vim
* ln -s .vim/vimrc .vimrc


# install YouCompleteMe
* vim >= 7.4, gcc 4.8.2
* git clone --recursive https://github.com/Valloric/YouCompleteMe.git
* cd .vim/bundle/YouCompleteMe
* git submodule update --init --recursive
* ./install.py --gocode-completer

Keeping the ~/.vim directory in git helps cloning the vim configuration on multiple machines.
Read [this tutorial](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/) on how to do it.
You might want to use [Vundle](https://github.com/gmarik/vundle) instead of Pathogen.

Snippets of a .vimrc can be found on [Vimbits](http://vimbits.com/).



To perform a fresh installation, run:
    cd ~
    git clone https://github.com/emka/dotvim.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc
    cd ~/.vim
    git submodule init
    git submodule update

To update all plugins, run:
    git submodule foreach git pull origin master

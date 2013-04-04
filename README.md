Keeping the ~/.vim directory in git allows cloning the vim configuration on multiple machines.

# How it works
Read or watch the [vimcast tutorial](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/) on how to do it.
You might want to use [Vundle](https://github.com/gmarik/vundle) instead of Pathogen.
The approach using Pathogen and _git submodule_ feels more clean to me as it is built on git only and does not have any [Chicken or Egg dilemma](http://gmarik.info/blog/2011/05/17/chicken-or-egg-dilemma) and does not need any custom setup scripts (except for the commands below).

# Further vim resources
Snippets of a .vimrc can be found on [Vimbits](http://vimbits.com/).

# Installation
To perform a fresh installation, run:
    cd ~
    git clone https://github.com/emka/dotvim.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc
    cd ~/.vim
    git submodule init
    git submodule update

# Updating plugins
To update all plugins, run:
    git submodule foreach git pull origin master

set nocompatible " deactivate compatibility mode for vi

"load pathogen without putting it in autoload/
runtime bundle/vim-pathogen/autoload/pathogen.vim 

filetype off

call pathogen#infect()
call pathogen#helptags() "generate doc

" autocmds
syntax on
filetype plugin on
filetype indent on

source ~/.vim/typespecific.vim
source ~/.vim/general.vim
source ~/.vim/commands.vim
source ~/.vim/pythonmode.vim
source ~/.vim/powerline.vim
source ~/.vim/latex.vim

if has('gui_running')
  source ~/.vim/gvimrc
end

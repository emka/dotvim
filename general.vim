" general options
set number                              " show line numbering
set mouse=a                             " Enable mouse in terminal
set wildmenu                            " fancier completion
set wildignore=*.o,*.obj,*~             " ignore while tab completing
set incsearch                           " incremental search during search entry
set modeline                            " look for per-file modline
set showcmd                             " show cmd in status line
set showmatch                           " show matching brackets
set tabpagemax=30                       " max number of tabs ( -p cmdline option )
set ruler                               " status line stuff
"set hlsearch                            " highlights search matches
set incsearch                           " jump to first match while typing
set ignorecase                          " ignore case in search pattern
set smartcase                           " ignore ignorecase if search pattern has uppercase
set showbreak=+                         " line wrapping sign
set directory=~/.vim/tmp/               " swap directory (*.sw? files)
set cursorline                          " highlights active cursor line
set t_Co=256                            " proper color themes in terminal mode
set notitle                             " suppress 'Thanks for flying vim' message
set timeoutlen=250                      " less delay after pressing ESC
set nojoinspaces                        " avoids to 2 spaces after dots when joining lines
"set foldmethod=syntax                   " code folding
set tags=./tags;$HOME                   " walk directory tree upto $HOME looking for tags
set ls=2

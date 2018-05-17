
set nocompatible                "Use Vim settings, rather than Vi settings

filetype off                    "required!
set encoding=utf-8
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let vundle manage itself
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
" Plugins
Plugin 'Valloric/YouCompleteMe' 
Plugin 'nvie/vim-flake8'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'

call vundle#end()               " required
filetype plugin indent on       "required!

set backspace=indent,eol,start  

set history=50                  

set ruler                       

set showcmd                     

set incsearch                   

set nu                          

set expandtab                   

set tabstop=4                   

set shiftwidth=4               

set hlsearch                   

set ic                         

set autoindent                 

syntax enable                  

set cmdheight=1                

set showmatch                  

set nobackup                   

set noswapfile                  
                                
                                
                                

map ,nn :NERDTreeToggle<CR>
set ttimeoutlen=50              

set splitbelow                  

set splitright                  

set wildmode=longest,list       
                                

" Mappings to traverse buffer list 
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

"Easy expansion of the active file directory
cnoremap <expr> %%  getcmdtype() == ':' ? expand('%:h').'/' : '%%'

"Shortcut to Mute Highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

map ,gt :YcmCompleter GoToDefinition<CR>
map ,gd :YcmCompleter GetDoc<CR> 

"Root permission on a file inside VIM
cmap w!! w !sudo tee >/dev/null %

"
let g:airline_powerline_fonts = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_python_binary_path = '/usr/bin/python3'
set laststatus=2


set t_Co=256
colorscheme slate

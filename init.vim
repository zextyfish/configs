set nu
set incsearch
set relativenumber
set nocompatible
set noswapfile
set nobackup
set wildmenu
set cursorline
set nowrap
set showtabline=2 
set laststatus=2
set autoindent
set ignorecase
set smartcase
set backspace=indent,eol,start
set ruler
set cmdheight=2
set splitbelow
set undofile
set undodir=~/.config/nvim/undodir
set scrolloff=8
set path+=**
if has('filetype')
  filetype indent plugin on
endif
if has('syntax')
  syntax on
endif

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'gruvbox-community/gruvbox'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'arcticicestudio/nord-vim'
call plug#end()

"Keyboard Shortcuts
let mapleader = " "
"autocmd FileType c	nnoremap <buffer> <leader>b :w<bar>!clear && gcc % -o /tmp/a.out && clear && cd /tmp && clear && ./a.out<CR>
autocmd FileType c	nnoremap <buffer> <leader>b :w<bar>sp<bar>wincmd j<bar>term gcc % -o /tmp/a.out && clear && cd /tmp && clear && ./a.out<CR>
autocmd FileType cp	nnoremap <buffer> <leader>b :w<bar>wincmd j<bar>term g++ % -o /tmp/a.out && cd /tmp && clear && ./a.out && rm -rf /tmp/a.out<CR><CR>
"autocmd Filetype python	nnoremap <buffer> <leader>b :w<bar>term python %<CR>
autocmd Filetype python	nnoremap <buffer> <leader>b :w<bar>sp<bar>wincmd j<bar>term python %<CR>
autocmd FileType xdefaults nnoremap <buffer> <leader>b :w<bar>!xrdb -merge .Xresources<CR><CR>
autocmd FileType octave nnoremap <buffer> <leader>B :w<bar>sp<bar>wincmd j<bar>term octave --persist %<CR>
autocmd FileType octave nnoremap <buffer> <leader>b :w<bar>sp<bar>wincmd j<bar>term octave %<CR>
"To move between split-windows
nnoremap <leader>h :wincmd h<CR> 
nnoremap <leader>j :wincmd j<CR> 
nnoremap <leader>k :wincmd k<CR> 
nnoremap <leader>l :wincmd l<CR> 
tnoremap <Esc> <C-\><C-n>
tnoremap <leader>h <C-\><C-N><C-w>h
tnoremap <leader>j <C-\><C-N><C-w>j
tnoremap <leader>k <C-\><C-N><C-w>k
tnoremap <leader>l <C-\><C-N><C-w>l
nnoremap <leader>p :NERDTreeToggle<CR>
"For Typos
command WQ wq
command Wq wq
command W w
command Q q
"For Terminal
autocmd TermOpen * startinsert

colorscheme nord
set background=dark
set termguicolors
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='nord'

set clipboard^=unnamedplus

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endifp
autocmd Vimenter * hi Normal ctermbg=NONE guibg=NONE

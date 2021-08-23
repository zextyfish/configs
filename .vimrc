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
set undodir=~/.vim/undodir
set scrolloff=8
set path+=**
if has('filetype')
  filetype indent plugin on
endif
if has('syntax')
  syntax on
endif

"Keyboard Shortcuts
let mapleader = " "
autocmd FileType c	nnoremap <buffer> <leader>b :w<bar>!clear && gcc % -o /tmp/a.out && clear && cd /tmp && clear && ./a.out<CR>
autocmd FileType cpp	nnoremap <buffer> <leader>b :w<bar>!g++ % -o /tmp/a.out && cd /tmp && clear && ./a.out && rm -rf /tmp/a.out<CR><CR>
autocmd Filetype python	nnoremap <buffer> <leader>b :w<bar>term python %<CR>
"To move between split-windows
nnoremap <leader>h :wincmd h<CR> 
nnoremap <leader>j :wincmd j<CR> 
nnoremap <leader>k :wincmd k<CR> 
nnoremap <leader>l :wincmd l<CR> 
"For Typos
command WQ wq
command Wq wq
command W w
command Q q
"Colorscheme
hi CursorLine cterm=NONE ctermbg=238
hi CursorLineNr term=bold ctermbg=238 ctermfg=11 cterm=NONE
"For Netrw
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20
let g:NetrwIsOpen=0
function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction
noremap <silent> <leader>p :call ToggleNetrw()<CR>

""From Archcraft config
"noh
"syntax on
"set t_Co=16
"set nocompatible
"set showmode
"set showcmd
"set ruler
"set number
"set cursorline
"set expandtab
"set noshiftround
"set lazyredraw
"set magic
"set hlsearch
"set incsearch
"set ignorecase
"set smartcase
"set encoding=utf-8
"set modelines=0
"set formatoptions=tqn1
"set tabstop=4
"set shiftwidth=4
"set softtabstop=4
"set cmdheight=1
"set laststatus=2
"set backspace=indent,eol,start
"set list
"set listchars=tab:\│\ 
set matchpairs+=<:>
set statusline=%1*\ file\ %3*\ %f\ %4*\ 
set statusline+=%=\ 
set statusline+=%3*\ %l\ of\ %L\ %2*\ line\ 
"set scrolloff=8
"nmap <C-S> :w<CR>
"nmap <C-_> :noh<CR>
"nmap <S-Left> v<Left>
"nmap <S-Right> v<Right>
"nmap <C-Up> 8k
"nmap <C-Down> 8j
"nmap <C-O> o<Esc>
"nmap <C-Z> u
"nmap <C-Y> <C-R>
"nmap <C-F> /
"nmap <C-H> i<C-W><Esc>
"nmap <F3> :set invnumber<CR>
"nmap <F4> :q<CR>
"imap <C-S> <Esc>:w<CR>a
"imap <C-_> <Esc>:noh<CR>a
"imap <S-Left> <Esc>lv<Left>
"imap <S-Right> <Esc>lv<Right>
"imap <C-Up> <Esc>8ka
"imap <C-Down> <Esc>8ja
"imap <C-O> <Esc>o
"imap <C-Z> <Esc>ua
"imap <C-Y> <Esc><C-R>a
"imap <Nul> <C-N>
"imap <C-F> <Esc>/
"imap <C-H> <C-W>
"imap <C-V> <Esc>pa
"imap <F3> <Esc>:set invnumber<CR>a
"imap <F4> <Esc>:q<CR>
"vmap <C-Up> 8k
"vmap <C-Down> 8j
"hi linenr ctermfg=8
"hi cursorline cterm=NONE
"hi cursorlinenr ctermfg=15
"hi comment ctermfg=8
"hi pmenu ctermbg=0 ctermfg=NONE
"hi pmenusel ctermbg=4 ctermfg=0
"hi pmenusbar ctermbg=0
"hi pmenuthumb ctermbg=7
"hi matchparen ctermbg=black ctermfg=NONE
"hi search ctermbg=0
"hi statusline ctermbg=0 ctermfg=NONE
"hi statuslinenc ctermbg=0 ctermfg=0
hi user1 ctermbg=1 ctermfg=0
hi user2 ctermbg=4 ctermfg=0
hi user3 ctermbg=0 ctermfg=NONE
hi user4 ctermbg=NONE ctermfg=NONE
hi group1 ctermbg=NONE ctermfg=0
"autocmd colorscheme * hi clear cursorline
"match group1 /\t/
""-------------------------------------------------------------
"" URL: https://vim.wikia.com/wiki/Example_vimrc
"" Authors: https://vim.wikia.com/wiki/Vim_on_Libera_Chat
"" Description: A minimal, but feature rich, example .vimrc. If you are a
""              newbie, basing your first .vimrc on this file is a good choice.
""              If you're a more advanced user, building your own .vimrc based
""              on this file is still a good idea.
"
""------------------------------------------------------------
"" Features {{{1
""
"" These options and commands enable some very useful features in Vim, that
"" no user should have to live without.
"
"" Set 'nocompatible' to ward off unexpected things that your distro might
"" have made, as well as sanely reset options when re-sourcing .vimrc
"set nocompatible
"
"" Attempt to determine the type of a file based on its name and possibly its
"" contents. Use this to allow intelligent auto-indenting for each filetype,
"" and for plugins that are filetype specific.
"if has('filetype')
"  filetype indent plugin on
"endif
"
"" Enable syntax highlighting
"if has('syntax')
"  syntax on
"endif
"
""------------------------------------------------------------
"" Must have options {{{1
""
"" These are highly recommended options.
"
"" Vim with default settings does not allow easy switching between multiple files
"" in the same editor window. Users can use multiple split windows or multiple
"" tab pages to edit multiple files, but it is still best to enable an option to
"" allow easier switching between files.
""
"" One such option is the 'hidden' option, which allows you to re-use the same
"" window and switch from an unsaved buffer without saving it first. Also allows
"" you to keep an undo history for multiple files when re-using the same window
"" in this way. Note that using persistent undo also lets you undo in multiple
"" files even in the same window, but is less efficient and is actually designed
"" for keeping undo history after closing Vim entirely. Vim will complain if you
"" try to quit without saving, and swap files will keep you safe if your computer
"" crashes.
"set hidden
"
"" Note that not everyone likes working this way (with the hidden option).
"" Alternatives include using tabs or split windows instead of re-using the same
"" window as mentioned above, and/or either of the following options:
"" set confirm
"" set autowriteall
"
"" Better command-line completion
"set wildmenu
"
"" Show partial commands in the last line of the screen
set showcmd
"
"" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
"" mapping of <C-L> below)
"set hlsearch
"
"" Modelines have historically been a source of security vulnerabilities. As
"" such, it may be a good idea to disable them and use the securemodelines
"" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
"" set nomodeline
"
"
""------------------------------------------------------------
"" Usability options {{{1
""
"" These are options that users frequently set in their .vimrc. Some of them
"" change Vim's behaviour in ways which deviate from the true Vi way, but
"" which are considered to add usability. Which, if any, of these options to
"" use is very much a personal preference, but they are harmless.
"
"" Use case insensitive search, except when using capital letters
"set ignorecase
"set smartcase
"
"" Allow backspacing over autoindent, line breaks and start of insert action
"set backspace=indent,eol,start
"
"" When opening a new line and no filetype-specific indenting is enabled, keep
"" the same indent as the line you're currently on. Useful for READMEs, etc.
"set autoindent
"
"" Stop certain movements from always going to the first character of a line.
"" While this behaviour deviates from that of Vi, it does what most users
"" coming from other editors would expect.
"set nostartofline
"
"" Display the cursor position on the last line of the screen or in the status
"" line of a window
"set ruler
"
"" Always display the status line, even if only one window is displayed
"set laststatus=2
"
"" Instead of failing a command because of unsaved changes, instead raise a
"" dialogue asking if you wish to save changed files.
"set confirm
"
"" Use visual bell instead of beeping when doing something wrong
"set visualbell
"
"" And reset the terminal code for the visual bell. If visualbell is set, and
"" this line is also included, vim will neither flash nor beep. If visualbell
"" is unset, this does nothing.
"set t_vb=
"
"" Enable use of the mouse for all modes
"if has('mouse')
"  set mouse=a
"endif
"
"" Set the command window height to 2 lines, to avoid many cases of having to
"" "press <Enter> to continue"
"set cmdheight=2
"
"" Display line numbers on the left
"set number
"
"" Quickly time out on keycodes, but never time out on mappings
"set notimeout ttimeout ttimeoutlen=200
"
"" Use <F11> to toggle between 'paste' and 'nopaste'
"set pastetoggle=<F11>
"
"
""------------------------------------------------------------
"" Indentation options {{{1
""
"" Indentation settings according to personal preference.
"
"" Indentation settings for using 4 spaces instead of tabs.
"" Do not change 'tabstop' from its default value of 8 with this setup.
"set shiftwidth=4
"set softtabstop=4
"set expandtab
"
"" Indentation settings for using hard tabs for indent. Display tabs as
"" four characters wide.
""set shiftwidth=4
""set tabstop=4
"
"
""------------------------------------------------------------
"" Mappings {{{1
""
"" Useful mappings
"
"" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
"" which is the default
"map Y y$
"
"" Map <C-L> (redraw screen) to also turn off search highlighting until the
"" next search
"nnoremap <C-L> :nohl<CR><C-L>
"
""------------------------------------------------------------
"" Statusline
"
"" :h mode() to see all modes
""let g:currentmode={
""	\ 'n'      : 'N ',
""	\ 'no'     : 'N·Operator Pending ',
""	\ 'v'      : 'V ',
""	\ 'V'      : 'V·Line ',
""	\ '\<C-V>' : 'V·Block ',
""	\ 's'      : 'Select ',
""	\ 'S'      : 'S·Line ',
""	\ '\<C-S>' : 'S·Block ',
""	\ 'i'      : 'I ',
""	\ 'R'      : 'R ',
""	\ 'Rv'     : 'V·Replace ',
""	\ 'c'      : 'Command ',
""	\ 'cv'     : 'Vim Ex ',
""	\ 'ce'     : 'Ex ',
""	\ 'r'      : 'Prompt ',
""	\ 'rm'     : 'More ',
""	\ 'r?'     : 'Confirm ',
""	\ '!'      : 'Shell ',
""	\ 't'      : 'Terminal '
""	\}
""
""" Automatically change the statusline color depending on mode
""function! ChangeStatuslineColor()
""	if (mode() =~# '\v(n|no)')
""	exe 'hi! StatusLine ctermfg=008'
""	elseif (mode() =~# '\v(v|V)' || g:currentmode[mode()] ==# 'V·Block' || get(g:currentmode, mode(), '') ==# 't')
""	exe 'hi! StatusLine ctermfg=005'
""	elseif (mode() ==# 'i')
""	exe 'hi! StatusLine ctermfg=004'
""	else
""	exe 'hi! StatusLine ctermfg=006'
""	endif
""	
""	return ''
""endfunction
""
""" Find out current buffer's size and output it.
""function! FileSize()
""	let bytes = getfsize(expand('%:p'))
""	if (bytes >= 1024)
""	let kbytes = bytes / 1024
""	endif
""	if (exists('kbytes') && kbytes >= 1000)
""	let mbytes = kbytes / 1000
""	endif
""
""	if bytes <= 0
""	return '0'
""	endif
""
""	if (exists('mbytes'))
""	return mbytes . 'MB '
""	elseif (exists('kbytes'))
""	return kbytes . 'KB '
""	else
""	return bytes . 'B '
""	endif
""endfunction
""
""function! ReadOnly()
""	if &readonly || !&modifiable
""	return ''
""	else
""	return ''
""endfunction
"
""function! GitInfo()
""let git = fugitive#head()
""if git != ''
""return ' '.fugitive#head()
""else
""return ''
""endfunction
"
""set laststatus=2
""set statusline=
""set statusline+=%{ChangeStatuslineColor()}               " Changing the statusline color
""set statusline+=%0*\ %{toupper(g:currentmode[mode()])}   " Current mode
""set statusline+=%8*\ [%n]                                " buffernr
"""set statusline+=%8*\ %{GitInfo()}                        " Git Branch name: requires https://github.com/tpope/vim-fugitive
""set statusline+=%8*\ %<%F\ %{ReadOnly()}\ %m\ %w\        " File+path
""set statusline+=%*
""set statusline+=%9*\ %=                                  " Space
""set statusline+=%8*\ %y\                                 " FileType
""set statusline+=%7*\ %{(&fenc!=''?&fenc:&enc)}\[%{&ff}]\ " Encoding & Fileformat
""set statusline+=%8*\ %-3(%{FileSize()}%)                 " File size
""set statusline+=%0*\ %3p%%\ \ %l:\ %3c\                 " Rownumber/total (%)
""
""hi User1 ctermfg=007
""hi User2 ctermfg=008
""hi User3 ctermfg=008
""hi User4 ctermfg=008
""hi User5 ctermfg=008
""hi User7 ctermfg=008
""hi User8 ctermfg=008
""hi User9 ctermfg=007
"
"
""-------------------------------------------------------------------------------
""From 'https://kadekillary.work/post/statusline-vim/'
"" Function: display errors from Ale in statusline
""function! LinterStatus() abort
""let l:counts = ale#statusline#Count(bufnr(''))
""let l:all_errors = l:counts.error + l:counts.style_error
""let l:all_non_errors = l:counts.total - l:all_errors
""return l:counts.total == 0 ? '' : printf(
""\ 'W:%d E:%d',
""\ l:all_non_errors,
""\ l:all_errors
""\)
""endfunction
"
"set laststatus=2
"set statusline=
"set statusline+=\ %l
"set statusline+=\ %*
"set statusline+=\ ‹‹
"set statusline+=\ %f\ %*
"set statusline+=\ ››
"set statusline+=\ %m
"set statusline+=\ %F
"set statusline+=%=
""set statusline+=\ %{LinterStatus()}
"set statusline+=\ ‹‹
""set statusline+=\ %{strftime('%R', getftime(expand('%')))}
"set statusline+=\ ::
"set statusline+=\ %n
"set statusline+=\ ››\ %*
"

"---------------------------------------------------------------------------------
" From 'https://got-ravings.blogspot.com/2008/08/vim-pr0n-making-statuslines-that-own.html'
"---------------------------------------------------------------------------------
"set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
"---------------------------------------------------------------------------------
"set statusline=%t       "tail of the filename
"set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
"set statusline+=%{&ff}] "file format
"set statusline+=%h      "help file flag
"set statusline+=%m      "modified flag
"set statusline+=%r      "read only flag
"set statusline+=%y      "filetype
"set statusline+=%=      "left/right separator
"set statusline+=%c,     "cursor column
"set statusline+=%l/%L   "cursor line/total lines
"set statusline+=\ %P    "percent through file
"----------------------------------------------------------------------------------
"define 3 custom highlight groups
"hi User1 ctermbg=green ctermfg=red   guibg=green guifg=red
"hi User2 ctermbg=red   ctermfg=blue  guibg=red   guifg=blue
"hi User3 ctermbg=blue  ctermfg=green guibg=blue  guifg=green
"
"set statusline=
"set statusline+=%1*  "switch to User1 highlight
"set statusline+=%F   "full filename
"set statusline+=%2*  "switch to User2 highlight
"set statusline+=%y   "filetype
"set statusline+=%3*  "switch to User3 highlight
"set statusline+=%l   "line number
"set statusline+=%*   "switch back to statusline highlight
"set statusline+=%P   "percentage thru file
"-----------------------------------------------------------------------------------
"spiiph's
"set statusline=
"set statusline+=%<\                       " cut at start
"set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
"set statusline+=%-40f\                    " path
"set statusline+=%=%1*%y%*%*\              " file type
"set statusline+=%10((%l,%c)%)\            " line and column
"set statusline+=%P                        " percentage of file
"-----------------------------------------------------------------------------------
" jamessan's
"set statusline=   " clear the statusline for when vimrc is reloaded
"set statusline+=%-3.3n\                      " buffer number
"set statusline+=%f\                          " file name
"set statusline+=%h%m%r%w                     " flags
"set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
"set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
"set statusline+=%{&fileformat}]              " file format
"set statusline+=%=                           " right align
"set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
"set statusline+=%b,0x%-8B\                   " current char
"set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset
"-----------------------------------------------------------------------------------
" tpope's
"set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c-%v\ %)%P
"-----------------------------------------------------------------------------------
" frogonwheels'
"set statusline=%f%w%m%h%1*%r%2*%{VarExists('b:devpath','<Rel>')}%3*%{VarExists('b:relpath','<Dev>')}%{XLockStat()}%=%-15(%l,%c%V%)%P
"-----------------------------------------------------------------------------------
" godlygeek's
"let &statusline='%<%f%{&mod?"[+]":""}%r%{&fenc !~ "^$\\|utf-8" || &bomb ? "[".&fenc.(&bomb?"-bom":"")."]" : ""}%=%15.(%l,%c%V %P%)'
"-----------------------------------------------------------------------------------
" Another way to write godlygeeks:
"set statusline=%<%f%m%r%{Fenc()}%=%15.(%l,%c%V\ %P%)
"function! Fenc()
"    if &fenc !~ "^$\|utf-8" || &bomb
"        return "[" . &fenc . (&bomb ? "-bom" : "" ) . "]"
"    else
"        return ""
"    endif
"endfunction
"-----------------------------------------------------------------------------------
" From 'https://www.reddit.com/r/vim/comments/6b7b08/my_custom_statusline/'
" statusline

"function! ActiveStatus()
"let statusline=""
"let statusline.="%1*"
"let statusline.="%(%{'help'!=&filetype?'\ \ '.bufnr('%'):''}\ %)"
"let statusline.="%2*"
"let statusline.=""
"let statusline.="%{fugitive#head()!=''?'\ \ '.fugitive#head().'\ ':''}"
"let statusline.="%3*"
"let statusline.=""
"let statusline.="%4*"
"let statusline.="\ %<"
"let statusline.="%f"
"let statusline.="%{&modified?'\ \ +':''}"
"let statusline.="%{&readonly?'\ \ ':''}"
"let statusline.="%="
"let statusline.="\ %{''!=#&filetype?&filetype:'none'}"
"let statusline.="%(\ %{(&bomb\|\|'^$\|utf-8'!~#&fileencoding?'\ '.&fileencoding.(&bomb?'-bom':''):'').('unix'!=#&fileformat?'\ '.&fileformat:'')}%)"
"let statusline.="%(\ \ %{&modifiable?(&expandtab?'et\ ':'noet\ ').&shiftwidth:''}%)"
"let statusline.="%3*"
"let statusline.="\ "
"let statusline.="%2*"
"let statusline.=""
"let statusline.="%1*"
"let statusline.="\ %2v"
"let statusline.="\ %3p%%\ "
"return statusline
"endfunction
"
"function! InactiveStatus()
"let statusline=""
"let statusline.="%(%{'help'!=&filetype?'\ \ '.bufnr('%').'\ \ ':'\ '}%)"
"let statusline.="%{fugitive#head()!=''?'\ \ '.fugitive#head().'\ ':'\ '}"
"let statusline.="\ %<"
"let statusline.="%f"
"let statusline.="%{&modified?'\ \ +':''}"
"let statusline.="%{&readonly?'\ \ ':''}"
"let statusline.="%="
"let statusline.="\ %{''!=#&filetype?&filetype:'none'}"
"let statusline.="%(\ %{(&bomb\|\|'^$\|utf-8'!~#&fileencoding?'\ '.&fileencoding.(&bomb?'-bom':''):'').('unix'!=#&fileformat?'\ '.&fileformat:'')}%)"
"let statusline.="%(\ \ %{&modifiable?(&expandtab?'et\ ':'noet\ ').&shiftwidth:''}%)"
"let statusline.="\ \ "
"let statusline.="\ %2v"
"let statusline.="\ %3p%%\ "
"return statusline
"endfunction
"
"set laststatus=2
"set statusline=%!ActiveStatus()
"hi User1 guibg=#afd700 guifg=#005f00
"hi User2 guibg=#005f00 guifg=#afd700
"hi User3 guibg=#222222 guifg=#005f00
"hi User4 guibg=#222222 guifg=#d0d0d0
"
"augroup status
"autocmd!
"autocmd WinEnter * setlocal statusline=%!ActiveStatus()
"autocmd WinLeave * setlocal statusline=%!InactiveStatus()
"autocmd ColorScheme default if(&background=="dark") | hi User1 guibg=#afd700 guifg=#005f00 | endif
"autocmd ColorScheme default if(&background=="dark") | hi User2 guibg=#005f00 guifg=#afd700 | endif
"autocmd ColorScheme default if(&background=="dark") | hi User3 guibg=#222222 guifg=#005f00 | endif
"autocmd ColorScheme default if(&background=="dark") | hi User4 guibg=#222222 guifg=#d0d0d0 | endif
"autocmd ColorScheme default if(&background=="light") | hi User1 guibg=#afd700 guifg=#005f00 | endif
"autocmd ColorScheme default if(&background=="light") | hi User2 guibg=#005f00 guifg=#afd700 | endif
"autocmd ColorScheme default if(&background=="light") | hi User3 guibg=#707070 guifg=#005f00 | endif
"autocmd ColorScheme default if(&background=="light") | hi User4 guibg=#707070 guifg=#d0d0d0 | endif
"augroup END
"-------------------------------------------------------------
"From 'https://shapeshed.com/vim-netrw/'

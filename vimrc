"  ____                _  _     ____                _
" |  _ \   ___   _ __ ( )| |_  |  _ \  __ _  _ __  (_)  ___
" | | | | / _ \ | '_ \|/ | __| | |_) |/ _` || '_ \ | | / __|
" | |_| || (_) || | | |  | |_  |  __/| (_| || | | || || (__
" |____/  \___/ |_| |_|   \__| |_|    \__,_||_| |_||_| \___|
"
"color
"
" filetype plugins
"
filetype plugin on
filetype indent on

"
" autoread when the file changes 
"
"w many tenths of a second to blink when matching brackets
"set mat=2
"
"" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
 syntax enable

try
    colorscheme desert
catch
endtry

set autoread 

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
 set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set relativenumber
set number
" Linebreak on 500 characters
set lbr
set tw=500

"set ai "Auto indent
set si "Smart indent
"set wrap "Wrap lines

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Make Copy&Paste great again
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F9> :set nonumber norelativenumber paste<CR>
map <F10> :set number relativenumber nopaste<CR>

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

set showmode

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(120,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27
" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

set mouse=a
set ai nocp digraph ek hid   ru sc vb wmnu   noeb noet nosol
set bs=2 fo=cqrt ls=2 shm=at ww=<,>,h,l 
set comments=b:#,:%,n:>
set viminfo=%,'50,\"100,:100,n~/.viminfo
set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
set statusline+=%#warningmsg#
set statusline+=%*

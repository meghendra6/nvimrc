"VIM configuration ------------------------------------------------------------

"Must be set first before configurations
filetype plugin indent on
syntax enable

"Enable line numbers
set number
"Highlight current line
set cursorline
"Softtab -- use spaces instead tabs.
set expandtab
set tabstop=2 shiftwidth=2 sts=2

"I dislike CRLF.
if !exists("vimpager")
  set fileformat=unix
endif

set backspace=2

"case insensitve search
set ignorecase

"Prefer UTF-8.
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp949,korea,iso-2022-kr

"Some additional syntax highlighters.
au! BufRead,BufNewFile *.wsgi setfiletype python
au! BufRead,BufNewFile *.sass setfiletype sass
au! BufRead,BufNewFile *.scss setfiletype scss
au! BufRead,BufNewFile *.haml setfiletype haml
au! BufRead,BufNewFile *.less setfiletype less

"These languages have their own tab/indent settings.
au FileType py    setl ts=4 sw=4 sts=4
au FileType cpp    setl ts=4 sw=4 sts=4
au FileType ruby   setl ts=2 sw=2 sts=2
au FileType yaml   setl ts=2 sw=2 sts=2
au FileType html   setl ts=2 sw=2 sts=2
au FileType jinja  setl ts=2 sw=2 sts=2
au FileType lua    setl ts=2 sw=2 sts=2
au FileType haml   setl ts=2 sw=2 sts=2
au FileType sass   setl ts=2 sw=2 sts=2
au FileType scss   setl ts=2 sw=2 sts=2
au FileType make   setl ts=4 sw=4 sts=4 noet
au FileType markdown   setl ts=2 sw=2 sts=2
au FileType gitcommit setl spell

"English spelling checker.
setlocal spelllang=en_us

set novisualbell

"gVim-specific configurations (including MacVim).
if has("gui_running")
  set bg=dark
  colorscheme material-theme
  set guioptions=egmrLt
  set linespace=1
endif

"MacVim-specific configurations.
if has("gui_macvim") || has("gui_vimr")
  set imd
  set guifont=Source_Code_Pro_Light:h16.00
endif

"GVim under GNOME
if has("gui_gnome")
  set guifont="Ubuntu Mono 11"
endif

"GVim under Windows
if has("gui_win32")
  set guifont=Consolas:h11:cANSI
endif

"mouse mode enabled automatically (somewhere), but I set it expliciltly.
set mouse+=a

"Using the clipboard as the default register
"in vim 7.3.74 and higher you can set
"http://vim.wikia.com/wiki/Accessing_the_system_clipboard
set clipboard=unnamedplus

"To show space(trail) as ~
set listchars=trail:~,tab:↹\
set list

"Folding
"http://verens.com/2005/04/18/using-javascript-folds-in-vim/
syn region myFold start="{" end="}" transparent fold
syn sync fromstart
set foldmethod=syntax
set foldtext=getline(v:foldstart)
syn sync maxlines=100
"default state: unfolded
set foldlevel=99

hi Folded ctermfg=red

"Disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"Allows hiding buffers even though they contain modifications
"Issue with neovim & vim-airline : https://github.com/neovim/neovim/issues/4524
"http://www.guckes.net/vim/setup.html
set hid

"Speed up Syntax Highlighting
"http://stackoverflow.com/questions/4775605/vim-syntax-highlight-improve-performance
"
"http://vim.wikia.com/wiki/Speed_up_Syntax_Highlighting
syn sync fromstart
set nocursorcolumn
set nocursorline
set norelativenumber
syn sync minlines=256 maxlines=256
augroup highlight_speed_up
  autocmd!
  autocmd BufWinEnter,Syntax * syn sync minlines=256 maxlines=256
augroup END

"End VIM configuration --------------------------------------------------------

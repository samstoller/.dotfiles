" Pathogen Plugin {
execute pathogen#infect()
" }

" General Behavior {
set nocompatible  " vim settings rather then old-fashioned vi
		          "    must come first in config
set ttyfast	      " optimize fast connections
set magic	      " enable regex
set fileformats=unix,dos,mac  " <NL> default
" }

" Encoding {
set encoding=utf-8	    " view encoding (internal)
set fileencoding=utf-8	" local to buffer (on disk)
set termencoding=utf-8	" terminal setting
" }

" Display {
set nowrap	      " disable line wrapping
set number	      " display line numbers
set showmode      " display editing mode
set showcmd	      " display cmd when typing
set title	      " let vim set term title
set scrolloff=4   " # of lines of cursor padding
set cmdheight=2   " # of lines for command-line
set laststatus=2  " display status always
" }

" Indentation & Whitespace {
set autoindent     " enable auto indentation
set copyindent     " make 'autoindent' use existing indent structure
set smartindent    " smart autoindenting for C programs
set expandtab	   " spaces instead of tabs
set smarttab	   " insert tabs on the start of a line according to
                   "    shiftwidth, not tabstop
set tabstop=4	   " # of spaces for tab
set shiftwidth=4   " # of spaces for autoindenting   
set softtabstop=4  " when hitting <BS>, pretend like a tab is removed even if spaces
" }

" Highlighting & Cursors {
syntax on	      " syntax highlighting
set hlsearch	  " search highlighting
set incsearch	  " auto jump to matches
set cursorline    " underline current line
set ruler	      " enable cursor position
set nosol	      " disable reset cursor on move
set showmatch     " highlight matching ( and {
set matchtime=2	  " tenths of a second to blink showmatch
" }

" GUI Fonts & Colors {
set t_Co=256  " better colors for vim over SSH
              "    or color-limited terms
colorscheme distinguished
" }

" Backup, History & Undo {
set history=1000	 " lines of search and cmd hist

set undofile	     " enable undos in a file
set nobackup	     " disable backup files
set noswapfile	     " disable swap files
set nowritebackup    " disable backups on overwrite

" Centralize backups, swapfiles and undo history
" Even if they are disabled above
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif
" }

" Bells & Sounds {
set noerrorbells  " disable bell on err
set novisualbell  " disable visual bell 
" }

" Plugins & Scripts {
filetype plugin indent on
" }

" Git {
autocmd Filetype gitcommit setlocal spell textwidth=72
" }

" TODO {
"set spell
" * toggle spellcheck shortcut
" }

" CLIPBOARD {

" Mac OS X: use smooth, antialiased fonts
" set antialias

" Enable per-directory .vimrc and .exrc files 
"    and disable unsafe commands in them
"set exrc    
"set secure 

" Set 'invisible' chars
"set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
"set list

" Set to auto read when a file is changed from the outside
"set autoread

" Only do this part when compiled with support for autocommands
if has("autocmd")
  augroup fedora
  autocmd!
  " In text files, always limit the width of text to 78 characters
  " autocmd BufRead *.txt set tw=78
  
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
  augroup END
endif

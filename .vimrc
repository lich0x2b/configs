syntax on
colorscheme elflord
set backspace=indent,eol,start
set nobackup
set ignorecase
set number
set showmode
set hlsearch
set incsearch
set sidescroll=5
set mouse=v

"GUI Options
if has("gui_running")
	set gfn=Monospace\ 10
	set guioptions-=r
	set guioptions-=T
	set guioptions-=m
    colorscheme zenburn
    set showtabline=2
endif

"tabbing
set showtabline=0

"Python stuff
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class 

"Folding
set foldmarker=->-,-<-
set foldmethod=marker

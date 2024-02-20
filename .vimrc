" this must be first, because it changes other options as side effect
set nocompatible


" Pathogen
execute pathogen#infect()
syntax on
" filetype plugin indent on


" Peaksea colors
if ! has("gui_running")
	set t_Co=256
endif
		" feel free to choose :set background=light for a different style
set background=dark
colors peaksea

set nowrap        " don't wrap lines
set tabstop=2     " a tab is four spaces
set backspace=indent,eol,start
                   " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type


" Returns true if paste mode is enabled
function! HasPaste()
     if &paste
             return 'PASTE MODE  '
     endif
             return ''
endfunction

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


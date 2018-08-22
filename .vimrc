""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                      GENERAL
""""""""""""""""""""""""""""""""""""""""""""""""""""""
set report=0 "Always displays the count of lines yanked





""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       CODE
""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4 shiftwidth=4 expandtab

set autoindent


""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       THEMING
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show the status line
set laststatus=2



""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     STATUS LINE
" Note that Spaces must be escaped with backslashes
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Simple status line
set statusline=%f\ -\ FileType:\ %y\ col:\ %c


""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable syntax highlighting"
syntax on

"Enables 256 colors"
set t_Co=256

"Displays line numberS"
set number

"Choose a theme"
colorscheme lime

"Remove at signs from end of editor"
set display+=lastline

:map <ScrollWheelUp> <C-Y>
:map <S-ScrollWheelUp> <C-U>
:map <ScrollWheelDown> <C-E>
:map <S-ScrollWheelDown> <C-D>

:nmap <ScrollWheelUp> <nop>
:nmap <S-ScrollWheelUp> <nop>
:nmap <C-ScrollWheelUp> <nop>
:nmap <ScrollWheelDown> <nop>
:nmap <S-ScrollWheelDown> <nop>
:nmap <C-ScrollWheelDown> <nop>
:nmap <ScrollWheelLeft> <nop>
:nmap <S-ScrollWheelLeft> <nop>
:nmap <C-ScrollWheelLeft> <nop>
:nmap <ScrollWheelRight> <nop>
:nmap <S-ScrollWheelRight> <nop>
:nmap <C-ScrollWheelRight> <nop>

"Sync vims copy-paste mechanism  with OSX clipboard"
set clipboard=unnamed

"filetype plugin indent on
" show existing tab with 4 spaces width
"set tabstop=4
" when indenting with '>', use 4 spaces width
"set shiftwidth=4
" On pressing tab, insert 4 spaces
"set expandtab

set backspace=indent,eol,start

" comment current line. Use x to uncomment
map <C-\> ^i#<Esc>j


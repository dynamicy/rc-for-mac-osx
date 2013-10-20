syntax on
behave xterm

set number
set nocompatible
set selectmode=mouse
set fileencoding=taiwan
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,big5,gbk,sjis,euc-jp,euc-kr,utf-bom,iso8859-1

set autoindent
set smartindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set ruler               " show the cursor position all the time
set wrap
set hlsearch
set ignorecase
set background=dark     " the other is light
set laststatus=2        " always show status line

" map
nnoremap tl gt
nnoremap th gT
nmap l <End>

" color, highlight = hi
hi SpellErrors      ctermfg=Red guifg=Red cterm=underline gui=underline term=reverse
hi SpecialKey       term=bold  cterm=bold  ctermfg=4
hi NonText          term=bold  cterm=bold  ctermfg=4
hi Directory        term=bold  cterm=bold  ctermfg=6
hi ErrorMsg         term=standout  cterm=bold  ctermfg=7  ctermbg=1
hi IncSearch        term=reverse  cterm=reverse
hi Search           term=reverse  ctermfg=0  ctermbg=3
hi MoreMsg          term=bold  cterm=bold  ctermfg=2
hi ModeMsg          term=bold  cterm=bold
hi LineNr           term=underline  cterm=bold  ctermfg=3
hi Question         term=standout  cterm=bold  ctermfg=2
hi StatusLine       term=bold,reverse  cterm=bold,reverse
hi StatusLineNC     term=reverse  cterm=reverse
hi Title            term=bold  cterm=bold  ctermfg=5
hi Visual           term=reverse  cterm=reverse
hi VisualNOS        term=bold,underline  cterm=bold,underline
hi WarningMsg       term=standout  cterm=bold  ctermfg=1
hi WildMenu         term=standout  ctermfg=0  ctermbg=3
hi Comment          term=bold  cterm=bold  ctermfg=6
hi Constant         term=underline  cterm=bold  ctermfg=5
hi Special          term=bold  cterm=bold  ctermfg=1
hi Identifier       term=underline  cterm=bold  ctermfg=6
hi Statement        term=bold  cterm=bold  ctermfg=3
hi PreProc          term=underline cterm=bold  ctermfg=4
hi Type             term=underline  cterm=bold  ctermfg=2
hi Ignore           ctermfg=0
hi Error            term=reverse  cterm=bold  ctermfg=7  ctermbg=1
hi Todo             term=standout  ctermfg=0  ctermbg=3

" To view diff while in file, use :w !git diff %
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'w0rp/ale'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'freeo/vim-kalisi'
" Plugin 'chriskempson/base16-vim'
"Plugin 'gosukiwi/vim-atom-dark'
Plugin 'scrooloose/nerdtree'
Plugin 'AutoComplPop' 
Plugin 'Yggdroot/indentLine'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'matze/vim-move'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'alok/python-conceal'

call vundle#end()            " required
" filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
filetype plugin on

syntax on

set mouse=a
set hlsearch
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smarttab

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType groovy setlocal shiftwidth=2 tabstop=2

" Enable completion where available.
let g:ale_completion_enabled = 1


" Open nerdtree automatically when vim starts if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Nerdtree: show dotfiles
let NERDTreeShowHidden=1

" """         BRACKETED PASTE           """
" function! WrapForTmux(s)
"   if !exists('$TMUX')
"     return a:s
"   endif
" 
"   let tmux_start = "\<Esc>Ptmux;"
"   let tmux_end = "\<Esc>\\"
" 
"   return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
" endfunction
" 
" let &t_SI .= WrapForTmux("\<Esc>[?2004h")
" let &t_EI .= WrapForTmux("\<Esc>[?2004l")
" 
" function! XTermPasteBegin()
"   set pastetoggle=<Esc>[201~
"   set paste
"   return ""
" endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
autocmd FileType python setlocal omnifunc=jedi#completions
set completeopt=menu,longest
set backspace=2
au BufNewFile,BufRead *Jenkinsfile setf groovy


:map \s :set smartcase!<CR>:set smartcase?<CR>
:set ignorecase
:set smartcase
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {
\   'python': ['flake8', 'mypy', 'pylint'],
\}


filetype plugin on
set omnifunc=syntaxcomplete#Complete
set scrolloff=10
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
endif

set term=screen-256color
set t_Co=256

let base16colorspace=256        " Access colors present in 256 colorspace
"colorscheme base16-ocean
" colorscheme vim-atom-dark
colorscheme kalisi
let g:airline_theme='kalisi'

set background=dark
" hi Conceal ctermbg=288 ctermfg=38
" hi Statement ctermbg=288 ctermfg=38
"hi Normal ctermbg=236 ctermfg=236
set conceallevel=1
set concealcursor=ni
hi Pmenu ctermbg=darkgray ctermfg=green
hi PmenuSel ctermbg=gray ctermfg=green


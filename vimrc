set nocompatible              " be iMproved, required
filetype off                  " required

let $PYTHONHOME="/home/christoffer/anaconda3/bin/python/"

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-surround'
Plugin 'vim-latex/vim-latex'
Plugin 'morhetz/gruvbox'
"Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

syntax enable

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'
let g:Tex_SmartKeyDot=0
" autocmd FileType tex call Tex_MakeMap('<leader>ll', ':update!<CR>:call Tex_RunLaTeX()<CR>', 'n', '<buffer>')
" autocmd FileType tex call Tex_MakeMap('<leader>ll', '<ESC>:update!<CR>:call Tex_RunLaTeX()<CR>', 'v', '<buffer>')


let g:Tex_Env_figure="\\begin{figure}[<+htpb+>]\<cr>\\centering\<cr>\\includegraphics{<+file+>}\<cr>\\caption{<+caption text+>}\<cr>\\label{fig:<+label+>}\<cr>\\end{figure}<++>"
let g:Tex_GotoError=0

set backspace=indent,eol,start

imap <C-g> <Plug>IMAP_JumpForward
nmap <C-g> <Plug>IMAP_JumpForward

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set splitright
set splitbelow

set spelllang=en_us spell

set lines=100

let g:Tex_IgnoredWarnings = 
    \'Underfull'."\n".
    \'Overfull'."\n".
    \'specifier changed to'."\n".
    \'You have requested'."\n".
    \'Missing number, treated as zero.'."\n".
    \'There were undefined references'."\n".
    \'Citation %.%# undefined'."\n".
    \'Marginpar on page'."\n" " %n moved by %.%pt.
let g:Tex_IgnoreLevel = 8

let g:Tex_FoldedEnvironments = 'verbatim,comment,eq,gather, align,figure,table,thebibliography, keywords,abstract,titlepage,frame'
let g:Tex_FoldedCommands = 'mymarginfig'


let g:Tex_Env_frame = "\\begin{frame}{<++>}\<CR><++>\<CR>\\end{frame}"
let g:Tex_Env_columns = "\\begin{columns}\<CR>\\begin{column}{.5\\textwidth}\<CR><++>\<CR>\\end{column}\<CR>\\begin{column}{.5\\textwidth}\<CR><++>\<CR>\\end{column}\<CR>\\end{columns}"
let g:Tex_Env_insg = "\\includegraphics[]{<++>}"

set ts=2
set sw=2
set expandtab

set number
set cul
set cc=80


" Airline setup
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts=1

colorscheme gruvbox
set background=dark    " Setting dark mode

if has('gui_running')
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
endif

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

set nocompatible              " be iMproved, required
filetype off                  " required

"let $PYTHONHOME="/home/christoffer/anaconda3/bin/python/"

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required

Plugin 'tpope/vim-surround'
" Plugin 'vim-latex/vim-latex'
Plugin 'lervag/vimtex'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'lifepillar/vim-mucomplete'

call vundle#end()            " required
filetype plugin indent on    " required
syntax enable


"
" General VIM stuff
"
set backspace=indent,eol,start
set shellslash

set fileencoding=utf-8
set encoding=utf-8

set splitright
set splitbelow

set spelllang=en_us spell

" set lines=100

set list listchars=tab:»·,trail:·,nbsp:·
set nojoinspaces

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set ts=2
set sw=2
set expandtab

set linebreak "Wordwrapping

set number
set cul
set cc=80

set foldcolumn=4

"
" Mu-complete
"
"set completeopt+=menuone

"inoremap <expr> <c-e> mucomplete#popup_exit("\<c-e>")
"inoremap <expr> <c-y> mucomplete#popup_exit("\<c-y>")
"inoremap <expr>  <cr> mucomplete#popup_exit("\<cr>")

"set completeopt+=noselect
"set completeopt+=noinsert

"set shortmess+=c   " Shut off completion messages
"set belloff+=ctrlg " If Vim beeps during completion

"let g:mucomplete#enable_auto_at_startup = 1

"
" Latex-Suite  
"
"set grepprg=grep\ -nH\ $* " Latex-Suite grep fix

"let g:tex_flavor='latex' " Latex-Suite file type fix
"let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 -interaction=nonstopmode -shell-escape -file-line-error-style "$*"'

"let g:Tex_DefaultTargetFormat = 'pdf'
"let g:Tex_MultipleCompileFormats='pdf,bibtex,aux,pdf'
"let g:Tex_BibtexFlavor = 'biber'
"let g:Tex_SmartKeyDot=0

"let g:Tex_GotoError=0
"let g:Tex_ShowErrorContext=0

"imap <C-g> <Plug>IMAP_JumpForward
"nmap <C-g> <Plug>IMAP_JumpForward

"let g:Tex_IgnoredWarnings = 
    "\'Underfull'."\n".
    "\'Overfull'."\n".
    "\'specifier changed to'."\n".
    "\'You have requested'."\n".
    "\'Missing number, treated as zero.'."\n".
    "\'There were undefined references'."\n".
    "\'Citation %.%# undefined'."\n".
    "\'Marginpar on page'."\n".
    "\'Package beamerthememetro'."\n".
    "\'Command \\InputIfFileExists'."\n"
"let g:Tex_IgnoreLevel = 12

"let g:Tex_FoldedSections = 'part,chapter,section,subsection,subsubsection'
"let g:Tex_FoldedEnvironments = 'verbatim,comment,eq,gather, align,figure,table,thebibliography, keywords,abstract,titlepage,frame'
"let g:Tex_FoldedCommands = 'mymarginfig'

"let g:Tex_Env_figure="\\begin{figure}[<+htpb+>]\<cr>\\centering\<cr>\\includegraphics[<++>]{<+file+>}\<cr>\\caption{<+caption text+>}\<cr>\\label{fig:<+label+>}\<cr>\\end{figure}<++>"
"let g:Tex_Env_frame = "\\begin{frame}{<++>}\<CR><++>\<CR>\\end{frame}"
"let g:Tex_Env_columns = "\\begin{columns}\<CR>\\begin{column}{.5\\textwidth}\<CR><++>\<CR>\\end{column}\<CR>\\begin{column}{.5\\textwidth}\<CR><++>\<CR>\\end{column}\<CR>\\end{columns}"
"let g:Tex_Env_insg = "\\includegraphics[]{<++>}"

"
" VimTeX
"

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=2
set conceallevel=1
let g:tex_conceal='abdmg'


let g:vimtex_fold_enabled = 1
let g:vimtex_format_enabled = 1

let g:vimtex_quickfix_ignore_filters = [
      \ 'Underfull',
      \ 'Overfull',
      \ 'Fira',
      \]

"
" UltiSnips
"
"let g:UltiSnipsSnippetsDir = "~/.vim/bundle/ultisnips/"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"
" Airline setup
"
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts=1

let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark    " Setting dark mode

if has('gui_running')
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
endif

"if $COLORTERM == 'gnome-terminal'
  "set t_Co=256
"endif
set termguicolors

nnoremap gq :ccl<cr>

"imap <leader>it <Plug>Tex_InsertItemOnNextLine



noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u


if empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
endif

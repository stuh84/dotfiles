" Pathogen Invocation
execute pathogen#infect()

" Remap some keys
set pastetoggle=<F3>
:nmap <F4> :set invnumber<CR>
:nmap <F7> :set norelativenumber!<CR>
:nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" Standard
syntax on
filetype plugin indent on

" Backup and swap directories
set backupdir=~/.vim/tmp/                   " for the backup files
set directory=~/.vim/tmp/                   " for the swap files

" Powerlineness
set rtp+=/usr/lib/python2.7/dist-packages/powerline/
set laststatus=2
set t_Co=256

" Incremental Search
set incsearch

" Ruler
set ruler

" Spaces instead of tabs
set expandtab

""""""""""""""""""""
""""""""""""""""""""
" Pathogen Plugins "
""""""""""""""""""""
""""""""""""""""""""

"" NERDTree

" START NERDTree if no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close NERDTree if it's the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" https://github.com/nathanaelkane/vim-indent-guides/issues/20
let g:indent_guides_exclude_filetypes = ['nerdtree']

" Start NerdTree
map <C-n> :NERDTreeToggle<CR>

" NerdTree UI Elements
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" END NERDTree

"" Airline
" START Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_theme='murmur'
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
" " END Airline

" space-vim-dark Colour Scheme
"   Range:   233 (darkest) ~ 238 (lightest)
"   "   Default: 235
let g:space_vim_dark_background = 233
color space-vim-dark

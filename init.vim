call plug#begin('~/AppData/Local/nvim/pluggedf')
"Flutter
Plug 'neoclide/coc.nvim', {'branch': 'release'} " COC
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
"Theme
Plug 'crusoexia/vim-monokai'
Plug 'tomasiser/vim-code-dark'
"NerdTree
Plug 'preservim/nerdtree'
"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"EasyMotion
Plug 'easymotion/vim-easymotion'
"Comment
Plug 'numToStr/Comment.nvim'
call plug#end()

set mouse=nicr
set noerrorbells                                              " Don't add sounds for errors
set number
set relativenumber
set nowrap
set nohlsearch
set smartcase
set noswapfile
set nobackup
set undodir=~/AppData/Local/nvim-data/backup
set undofile
set incsearch
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2
set colorcolumn=120
set encoding=utf-8
set clipboard=unnamedplus
set backspace=indent,eol,start
" highlight ColorColumn ctermbg=0 guibg=lightgrey

let mapleader = " "

nnoremap <Leader>+ :tabnew<CR> 
nnoremap <C-Left> :tabp<CR>                                                                            
nnoremap <C-Right> :tabn<CR>
nnoremap <Leader>b :e#<CR>

"Comment-------------------------------------------------------------
lua require('Comment').setup()
"Theme--------------------------------------------------------
syntax on
colorscheme monokai
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1
"NerdTree--------------------------------------------------------
nnoremap <C-t> :NERDTreeToggle<CR>

"Coc--------------------------------------------------------
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
if CocAction('hasProvider', 'hover')
call CocActionAsync('doHover')
else
call feedkeys('K', 'in')
endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Applying codeAction to the selected region.
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
" Show all diagnostics.
nnoremap <silent><nowait> <C-a>  :<C-u>CocList diagnostics<cr>

"Airline-----------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 
let g:airline_theme = 'codedark'
"EasyMotion-------------------------------------------------------------------------
nmap <Leader>s <Plug>(easymotion-overwin-f2)

"Flutter---------------------------------------------------------------
nnoremap <leader>fr :FlutterRun<cr>
nnoremap <leader>fh :FlutterHotRestart<cr>
nnoremap <leader>ft :FlutterSplit<cr>

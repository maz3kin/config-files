syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set nowrap
set smartcase
set noswapfile
set incsearch
set laststatus=2
set termguicolors
set mouse=a
set wildmenu
set wildmode=list:full

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'sainnhe/sonokai'
Plug 'itchyny/lightline.vim'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'

call plug#end()

" Important!!
if has('termguicolors')
  set termguicolors
endif

set guifont=SauceCodePro\ Nerd\ Font:h11

" sonokai
colorscheme sonokai
let g:sonokai_enable_italic = 1
let g:lightline = {'colorscheme' : 'sonokai'}
set background=dark

" leader key mapped to SPACEBAR
let mapleader= " "

" moves cursor to new line and TABS after () [] {}
let delimitMate_expand_cr = 1

" coc settings
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
set hidden " TextEdit might fail if hidden is not set.
set cmdheight=1 " Give more space for displaying messages.
set signcolumn=yes " Always show the signcolumn, otherwise it would shift the text each time
set shortmess+=c 
command! -nargs=0 Prettier :CocCommand prettier.formatFile

let g:coc_global_extensions = ['coc-prettier', 'coc-json', 'coc-tsserver', 'coc-html', 'coc-css', 'coc-emmet', 'coc-explorer'] 
let g:coc_disable_startup_warning = 1

" Find files using Coc-Explorer
map <leader>n :CocCommand explorer<CR>


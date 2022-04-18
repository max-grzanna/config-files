" Options
set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set number
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu
set smartindent
set autoindent
set cursorline
autocmd FileType yaml,yml setlocal ts=2 sts=2 sw=2 et ai
set colorcolumn=80
set cursorcolumn
" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2
set ruler
" Give more space for displaying messages.
set cmdheight=2
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c


filetype plugin indent on
syntax on


" True color if available
let term_program=$TERM_PROGRAM

" Check for conflicts with Apple Terminal app
if term_program !=? 'Apple_Terminal'
    set termguicolors
else
    if $TERM !=? 'xterm-256color'
        set termguicolors
    endif
endif

" Config for COC-Vim

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"


call plug#begin()
" Appearance
    Plug 'itchyny/lightline.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'rafi/awesome-vim-colorschemes'       
    " Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'
    Plug 'sbdchd/neoformat'
    Plug 'https://github.com/jose-elias-alvarez/null-ls.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'towolf/vim-helm'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " Completion / linters / formatters
    Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'}
    Plug 'plasticboy/vim-markdown'
    Plug 'andrewstuart/vim-kubernetes'



call plug#end()

nnoremap <C-N> :NERDTreeToggle<CR>
nnoremap <C-p> :Files<Cr>

colorscheme papercolor

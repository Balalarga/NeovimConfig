" Plugins -----------------------------------------
call plug#begin()

Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'rose-pine/neovim'
Plug 'Civitasv/cmake-tools.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim'
Plug 'kdheepak/lazygit.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'rcarriga/nvim-notify'
Plug 'windwp/nvim-autopairs'
Plug 'mfussenegger/nvim-dap'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()


" Sets --------------------------------------------
syntax on
set nu
set relativenumber
set smartindent
set nowrap

set noswapfile
set nobackup

set tabstop=4
set tabstop=4
set softtabstop=4
set shiftwidth=4
set scrolloff=8
set expandtab

set nohlsearch
set incsearch

set termguicolors

set updatetime=50

set signcolumn=yes
set colorcolumn=120

set undodir=.undodir
set undofile

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

let mapleader = " "
inoremap <c-c> <esc>
nnoremap <c-c> :wq<cr>
vnoremap <c-c> <esc>
" Saving file
noremap <c-s> :w<cr>
noremap <leader>/ :set hlsearch!<cr>
" Pressing the letter o will open a new line below the current one.
" Exit insert mode after creating a new line above or below the current line.
"nnoremap o o<esc>
"nnoremap O O<esc>

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

map L $
map H ^
map <a-j> <c-e><cr>
map <a-k> kk<c-y><cr>

xnoremap p pgvy

" Search/replace word under cursor
noremap <c-f> :%s/\<<c-r><c-w>\>/<c-r><c-w>/gI<left><left><left>

" NerdTree
noremap <c-n> :NERDTreeToggle<cr>
" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

" Undotree
nnoremap <leader>u :UndotreeFocus<cr>

" Color scheme
colorscheme gruvbox


" Commands

" You can split a window into sections by typing `:split` or `:vsplit`.
" Display cursorline and cursorcolumn ONLY in active window.
augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline
    autocmd WinEnter * set cursorline
augroup END


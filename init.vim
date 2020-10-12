call plug#begin()
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'farmergreg/vim-lastplace'
Plug 'fatih/vim-go'
Plug 'itchyny/lightline.vim'
Plug 'justinmk/vim-sneak'
Plug 'mihaifm/bufstop'
Plug 'pangloss/vim-javascript'
Plug 'preservim/nerdtree'
Plug 'prettier/vim-prettier'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-vividchalk'
Plug 'ziglang/zig.vim'
call plug#end()

set undofile
set hidden
"set textwidth=79
set colorcolumn=+1
set shiftwidth=4
set tabstop=4
set expandtab
highlight ColorColumn ctermbg=8
inoremap jj <Esc>
map <Space> <Leader>
set wildmode=longest:full

colorscheme vividchalk

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <leader>b :Bufstop<CR>
map <leader>a :BufstopModeFast<CR>
map <C-tab>   :BufstopBack<CR>
map <S-tab>   :BufstopForward<CR>

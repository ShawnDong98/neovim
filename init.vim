" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'kevinhwang91/rnvimr'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


syntax on
" 显示行号
set number
" 一面输入一面高亮
" set incsearch
" 搜索高亮
" set hlsearch
" 每一级缩进的长度
set shiftwidth=2
" 在编辑模式的时候按退格键的时候退回缩进的长度
set softtabstop=2
" 设置c风格的tab键
set cindent


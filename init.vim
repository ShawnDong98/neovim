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
Plug 'github/copilot.vim'
Plug 'flazz/vim-colorschemes'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" 更改主题
colorscheme evening

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
"自动保存
set autowriteall

" 按F9之后复制粘贴不会乱板
set pastetoggle=<F9>

" 自动打开NERDTree
autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" 配置TagBar
nmap <F8> :TagbarToggle<CR>
" 启动时自动focus
let g:tagbar_autofocus = 1


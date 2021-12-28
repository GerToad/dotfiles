call plug#begin('~/.config/nvim/autoload/plugged')

" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag' "For HTML
Plug 'tpope/vim-surround' "For envolve Visual + S + () 

"CSS Colors
Plug 'ap/vim-css-color'

"" File manager Vifm
Plug 'vifm/vifm.vim'

"Themes
Plug 'morhetz/gruvbox' 
Plug 'arcticicestudio/nord-vim'
Plug 'jacoborus/tender.vim'

"Syntax     this
Plug 'sheerun/vim-polyglot'

"Status Bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter' "space cc
"Plug 'terryma/vim-multiple-cursors' "this (has to be configured)

"tmux
"Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

" Tabs
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'ryanoasis/vim-devicons'

"BufferLine
"Plug 'akinsho/nvim-bufferline.lua'

"Search files 
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"IntelliSense and Syntax Highlighting
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'sirver/ultisnips' "this for autocomplete
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

"Lens Automatic Window Resizing
"Plug 'camspiers/animate.vim'
"Plug 'camspiers/lens.vim'


call plug#end()


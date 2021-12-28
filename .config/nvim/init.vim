set number
set mouse=a 
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=UTF-8
set showmatch
set sw=2
set relativenumber
set laststatus=2

"Plugins
source $HOME/.config/nvim/vim-plug/plugins.vim

"Themes
colorscheme nord
"let g:gruvbox_contrast_dark = "hard"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vifm
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>vv :Vifm<CR>
map <Leader>vs :VsplitVifm<CR>
map <Leader>sp :SplitVifm<CR>
map <Leader>dv :DiffVifm<CR>
map <Leader>tv :TabVifm<CR>

"NerdTree
let NERDTreeQuitOnOpen=1

"Icons Barbar
let bufferline = get(g:, 'bufferline', {})
let bufferline.icons = v:true
let bufferline.auto_hide = v:false

let mapleader=" "

"-------------EasyMotion----------------
nmap <Leader>s <Plug>(easymotion-s2)

"-------------NERDTree------------
nmap <Leader>nt :NERDTreeFind<CR>

"----------------General------------------------
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <F6> gg=G<C-o><C-o>
"quick semi ---------this
nnoremap <Leader>; $a;<Esc> 
"Buffers ---this
map <Leader>ob :Buffers<cr>
"Scrolling ----this
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>
"Clipboard 
nnoremap <Leader>co Vy<Esc>
nnoremap <Leader>cl "+y<Esc>

"Status Bar
let g:lightline = {
      \ 'colorscheme': 'tender',
      \ 'background': 'blue',
      \ }

"-------------Tmux navigator---------------this
"split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

"-------------Moving bewteen (Alt + ,/.)------------
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
nnoremap <silent>    <A-c> :BufferClose<CR>

"-----------Termial config------------
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

"------------Search files--------------
nnoremap <C-p> :FZF<CR>
map <leader>p :Files<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
"Search inside the files --------this
"map <Leader>ag :Ag<CR> ----Doesn't works

"------------IntelliSense and Syntax Highlighting--------------
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
"this-------"
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)    It fails!



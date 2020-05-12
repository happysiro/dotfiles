set runtimepath+=~/.config/nvim
runtime! userautoload/*.vim

if &compatible
  set nocompatible
endif

if &compatible
 set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')

 call dein#add('~/.cache/dein')
 call dein#add('Shougo/deoplete.nvim')
 if !has('nvim')
   call dein#add('roxma/nvim-yarp')
   call dein#add('roxma/vim-hug-neovim-rpc')
 endif
 call dein#add('Shougo/dein.vim')
 call dein#add('altercation/vim-colors-solarized')
 call dein#add('Shougo/unite.vim')
 call dein#add('puppetlabs/puppet-syntax-vim')
 call dein#add('hashivim/vim-terraform')
 call dein#add('roxma/nvim-completion-manager')
 call dein#add('plasticboy/vim-markdown')
 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on
syntax enable

"キーバインド
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>Lk
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>
nnoremap sf :<C-u>Unite file<CR>

"その他
syntax enable
let g:solarized_termcolors=256
set background=light
" colorscheme solarized
set expandtab
set tabstop=2
set shiftwidth=2
set mouse-=a
set noswapfile

autocmd BufWritePre * :%s/\s\+$//ge

let g:python_host_prog='/Users/mitsuki/anaconda3/bin//python3.6'
let g:python3_host_prog='/Users/mitsuki/anaconda3/bin//python3.6'

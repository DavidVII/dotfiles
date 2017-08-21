" Setup
filetype plugin indent on
syntax on
colorscheme railscasts

let mapleader = " "

" Basics
set number
set encoding=utf-8
set laststatus=2
set modelines=5
set ts=2 sts=2 sw=2 expandtab
set listchars=tab:»·,trail:·
set incsearch
set hlsearch
set ignorecase
set smartcase
set nojoinspaces
set display+=lastline
set title
set colorcolumn=100

" Packages
packadd minpac
call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type' : 'opt'})

" Add other plugins here.
call minpac#add('jpo/vim-railscasts-theme')
call minpac#add('tpope/vim-surround')
call minpac#add('sheerun/vim-polyglot')
call minpac#add('c-brenn/phoenix.vim')
call minpac#add('tpope/vim-projectionist')
call minpac#add('slashmili/alchemist.vim')
call minpac#add('vim-airline/vim-airline')
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('junegunn/fzf.vim')
  " Load FZF from homebrew installation
  set runtimepath^=/usr/local/opt/fzf
  runtime plugin/fzf.vim
call minpac#add('Shougo/deoplete.nvim')
  let g:deoplete#enable_at_startup = 1
  " use tab for completion
  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

call minpac#add('neomake/neomake')
  " Run Neomake when I save any buffer
  augroup localneomake
  autocmd! BufWritePost * Neomake
  augroup END
  " Don't tell me to use smartquotes in markdown ok?
  let g:neomake_markdown_enabled_makers = []
  " Setup neomake with elixir and credo.
  let g:neomake_elixir_enabled_makers = ['mix', 'credo']

" Commands
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

" Mappings

" Stop highlighting on Enter
map <CR> :noh<CR>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" close buffer
nmap <leader>d :bd<CR>
" close all buffers
nmap <leader>D :bufdo bd<CR>

" New lines
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" map ; to :
nnoremap ; :

" Window Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" FZF Search
map <leader>p :FZF<CR>

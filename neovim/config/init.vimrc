set nocompatible               " Be iMproved

"Text Wrapping
if !exists('*s:setupWrapping')
  set wm=2
  set textwidth=80
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

let g:python3_host_prog = "/usr/local/bin/python3"

" Enable filetype detection
filetype on

" Path for plug
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

" Reload files changed outside vim
set autoread
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

" Required:
call plug#begin(expand('~/.config/nvim/plugged'))
"*******************
" Coding Assist
"*******************
Plug 'gregsexton/MatchTag'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'janko-m/vim-test'
Plug 'tpope/vim-commentary'
Plug 'jodosha/vim-godebug', { 'for' : 'go' }
Plug 'junegunn/vim-xmark', { 'do': 'make' }
"*******************
" Formatting/Linting
"*******************
Plug 'w0rp/ale', { 'for': ['javascript', 'html', 'go']}
Plug 'neomake/neomake', { 'for': 'ruby'}
Plug 'Chiel92/vim-autoformat'
"**********
" Git
"**********
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'airblade/vim-gitgutter'
"**********
" Languages
"**********
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir'}
Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh', 'for': 'elixir' }
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-bundler', { 'for': 'ruby'}
"**************
" Miscellaneous
"**************
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"*******************
" Snippets
"*******************
Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'honza/vim-snippets', { 'frozen': '1' }
Plug 'shougo/neosnippet'
Plug 'shougo/neosnippet-snippets', { 'frozen': '1'}
"**********
" Visual
"**********
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug '~/.dotfiles/neovim/colors'
call plug#end()

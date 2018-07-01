
" 打开语法高亮
syntax on
" 设置行号
set number
" 设置tab为4个空格
set tabstop=4
" 默认缩进为4个空格
set shiftwidth=4
" 设置tab扩展为空格
set expandtab
" 映射esc键
inoremap jk <Esc>
" 设置leader
let mapleader = ','


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"super tab 按 tab 键实现自动完成 比VIM自带的 C+X C+O 更加好用
"支持更多语言和include
Plugin 'SuperTab'
"" auto parires with () 自动匹配 () {}
Plugin 'jiangmiao/auto-pairs'
" YouCompleteMe自动补全
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '/home/blankboy/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> 
" Nerdtree
Plugin 'scrooloose/nerdtree'
"autocmd VimEnter * NERDTree
"map :silent! NERDTreeToggle

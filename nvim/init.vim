" No compatible with the original VI(venerable old)
set nocompatible

"VIM-PLUG
call plug#begin('~/.config/nvim/plugged')
 
"Plugin list ------------------------------------------------------------------

"Views
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Utils
Plug 'wakatime/vim-wakatime'

"Edit
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'ervandew/supertab'
Plug 'neomake/neomake'
Plug 'fntlnz/atags.vim'

"Languages
Plug 'plasticboy/vim-markdown'
Plug 'ap/vim-css-color'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'moll/vim-node'
Plug 'groenewege/vim-less'
Plug 'plasticboy/vim-markdown'
Plug 'cakebaker/scss-syntax.vim'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

"Finders
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': './install --all' }

"End plugin list --------------------------------------------------------------
call plug#end()

"To set source order, each files to be sourced is specified rather than using
"init/*.vim
runtime! init/plugin-config.vim
runtime! init/vim-config.vim
runtime! init/key-binding.vim
runtime! init/highlight.vim

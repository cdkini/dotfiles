let mapleader=" "
set nocompatible

" =====================================================================================================================
"                                                       DEFAULTS
" =====================================================================================================================

source $HOME/.config/nvim/settings/general/options.vim
source $HOME/.config/nvim/settings/general/remaps.vim
source $HOME/.config/nvim/settings/general/terminal.vim
source $HOME/.config/nvim/settings/general/netrw.vim
source $HOME/.config/nvim/settings/general/helpers.vim

" =====================================================================================================================
"                                                       PLUGINS
" =====================================================================================================================
let g:ale_disable_lsp = 1

" Plugins
call plug#begin()
  " THEME:
        Plug 'lifepillar/vim-gruvbox8'                              " Color scheme            [plugins/theme/gruvbox.vim]
        Plug 'vim-airline/vim-airline'                              " Tabline                 [plugins/theme/airline.vim]
        Plug 'vim-airline/vim-airline-themes'

    " CODE:
        Plug 'neoclide/coc.nvim', {'branch': 'release'}             " Intellisense            [plugins/code/coc.vim]
        " Plug 'dense-analysis/ale'                                   " Linting                 [plugins/code/ale.vim]
        Plug 'tmsvg/pear-tree'                                      " Auto pairs              [plugins/code/pear-tree.vim]

    " MISC:
        Plug 'yuttie/comfortable-motion.vim'                        " Smooth scrolling        [plugins/misc/comfortable-motion.vim]
        Plug 'preservim/tagbar'                                     " Tagbar                  [plugins/misc/tagbar.vim]
        Plug 'mbbill/undotree'                                      " Undo tree               [plugins/misc/undotree.vim]
        Plug 'junegunn/goyo.vim'                                    " Distraction-free mode   [plugins/misc/goyo.vim]
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }         " Fuzzy finding           [plugins/misc/fzf.vim]
        Plug 'junegunn/fzf.vim'
        Plug 'Yggdroot/indentLine'                                  " Indent markers
        Plug 'mhinz/vim-signify'                                    " Gutter diffs
        Plug 'sheerun/vim-polyglot'                                 " Syntax highlighting
        Plug 'vimwiki/vimwiki'                                      " Notetaking
        Plug 'tpope/vim-commentary'                                 " Comment out
        Plug 'tpope/vim-eunuch'                                     " UNIX file operations
        Plug 'tpope/vim-fugitive'                                   " Git commands
        Plug 'tpope/vim-surround'                                   " Surround editing

    " LANG:
        Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }          " Go                      [plugins/lang/vim-go.vim]
call plug#end()

" Plugin Settings
  " Theme
    source $HOME/.config/nvim/settings/plugins/theme/gruvbox.vim
    source $HOME/.config/nvim/settings/plugins/theme/airline.vim

  " Code
    source $HOME/.config/nvim/settings/plugins/code/coc.vim
    " source $HOME/.config/nvim/settings/plugins/code/ale.vim
    source $HOME/.config/nvim/settings/plugins/code/pear-tree.vim

  " Misc
    source $HOME/.config/nvim/settings/plugins/misc/comfortable-motion.vim
    source $HOME/.config/nvim/settings/plugins/misc/fzf.vim
    source $HOME/.config/nvim/settings/plugins/misc/goyo.vim
    source $HOME/.config/nvim/settings/plugins/misc/tagbar.vim
    source $HOME/.config/nvim/settings/plugins/misc/undotree.vim

  " Lang
    source $HOME/.config/nvim/settings/plugins/lang/vim-go.vim

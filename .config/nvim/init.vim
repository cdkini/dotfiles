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

" Plugin Imports
call plug#begin('$HOME/.config/nvim/plugged')

    " THEME:
        Plug 'vim-airline/vim-airline'                              " Tabline                 [plugins/theme/airline.vim]
        Plug 'vim-airline/vim-airline-themes'
        Plug 'christianchiarulli/nvcode-color-schemes.vim'
        Plug 'nvim-treesitter/nvim-treesitter'
 
    " CODE:
        Plug 'tmsvg/pear-tree'                                      " Auto pairs              [plugins/code/pear-tree.vim]
        Plug 'neovim/nvim-lspconfig'                                " Native LSP              [plugins/code/lspconfig.vim]
        Plug 'hrsh7th/nvim-compe'                                   " Hints/tab completion    [plugins/code/completion.vim] 

    " MISC:
        Plug 'yuttie/comfortable-motion.vim'                        " Smooth scrolling        [plugins/misc/comfortable-motion.vim]
        Plug 'preservim/tagbar'                                     " Tagbar                  [plugins/misc/tagbar.vim]
        Plug 'mbbill/undotree'                                      " Undo tree               [plugins/misc/undotree.vim]
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }         " Fuzzy finding           [plugins/misc/fzf.vim]
        Plug 'junegunn/fzf.vim'
        Plug 'tpope/vim-commentary'                                 " Comment out
        Plug 'tpope/vim-eunuch'                                     " UNIX file operations
        Plug 'tpope/vim-surround'                                   " Surround editing       
        Plug 'tpope/vim-fugitive'                                   " Git commands
        Plug 'mhinz/vim-signify'                                    " Gutter diffs
        Plug 'vimwiki/vimwiki'                                      " Notetaking

        Plug 'tweekmonster/startuptime.vim'                         " Performance measurement

call plug#end()


" Plugin Settings

  " Theme
    source $HOME/.config/nvim/settings/plugins/theme/treesitter.vim
    source $HOME/.config/nvim/settings/plugins/theme/airline.vim

  " Code
    source $HOME/.config/nvim/settings/plugins/code/pear-tree.vim
    source $HOME/.config/nvim/settings/plugins/code/completion.vim
    source $HOME/.config/nvim/settings/plugins/code/lspconfig.vim

  " Misc
    source $HOME/.config/nvim/settings/plugins/misc/comfortable-motion.vim
    source $HOME/.config/nvim/settings/plugins/misc/fzf.vim
    source $HOME/.config/nvim/settings/plugins/misc/goyo.vim
    source $HOME/.config/nvim/settings/plugins/misc/tagbar.vim
    source $HOME/.config/nvim/settings/plugins/misc/undotree.vim


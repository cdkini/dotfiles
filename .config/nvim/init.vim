let mapleader=" "
set nocompatible

autocmd VimEnter * source $HOME/.config/nvim/init.vim

" =====================================================================================================================
"                                                       DEFAULTS
" =====================================================================================================================
 
" OPTIONS:
  source $HOME/.config/nvim/settings/general/options.vim

" GENERAL REMAPS:
  source $HOME/.config/nvim/settings/general/remaps.vim

" HELPER FUNCTIONS:
  source $HOME/.config/nvim/settings/general/helpers.vim

" TERMINAL SETTINGS:
  source $HOME/.config/nvim/settings/general/terminal.vim

" =====================================================================================================================
"                                                       PLUGINS
" =====================================================================================================================

" PLUGIN IMPORTS:
call plug#begin('$HOME/.config/nvim/plugged')

    " THEME:
        " Plug 'christianchiarulli/nvcode-color-schemes.vim'
        " Plug 'mhartington/oceanic-next'
        " Plug 'sainnhe/gruvbox-material'                             " Lightweight statusline  [plugins/theme/galaxyline.vim]
        Plug 'glepnir/galaxyline.nvim'
        Plug 'sainnhe/everforest'
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " v0.5.0 color support    [plugins/theme/treesitter.vim]

    " CODE:
        Plug 'alvan/vim-closetag'                                   " Auto-close HTML/JSX     [plugins/code/closetag.vim]
        Plug 'hrsh7th/nvim-compe'                                   " LSP completion          [plugins/code/compe.vim]
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }         " Fuzzy finding           [plugins/code/fzf.vim]
        Plug 'junegunn/fzf.vim'
        Plug 'lewis6991/gitsigns.nvim'                              " Cleaner git gutters     [plugins/code/gitsigns.vim]
        Plug 'mbbill/undotree'                                      " Undo tree               [plugins/code/undotree.vim]
        Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'} "        [plugins/code/chadtree.vim]
        Plug 'neovim/nvim-lspconfig'                                " v0.5.0 LSP!             [plugins/code/lspconfig.vim]
        Plug 'nvim-lua/plenary.nvim'                                " Gitsigns helper funcs
        Plug 'romgrk/barbar.nvim'                                   " Improved buffers        [plugins/code/barbar.vim]
        Plug 'tpope/vim-commentary'                                 " Comment out
        Plug 'tpope/vim-eunuch'                                     " UNIX file operations
        Plug 'tpope/vim-fugitive'                                   " Git commands
        Plug 'tpope/vim-repeat'                                     " Improved . support
        Plug 'tpope/vim-rhubarb'                                    " Go to GitHub
        Plug 'tpope/vim-surround'                                   " Surround editing
        Plug 'unblevable/quick-scope'                               " Improved in-line nav    [plugins/code/quick-scope.vim]
        Plug 'vim-test/vim-test'                                    " Test runner

    " MISC:
        Plug 'gennaro-tedesco/nvim-peekup'                          " Register preview        [plugins/code/peekup.vim]
        Plug 'junegunn/goyo.vim'                                    " Distraction free mode   [plugins/misc/goyo.vim]
        Plug 'liuchengxu/vim-which-key'                             " Key previews            [plugins/misc/whichkey.vim]
        Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
        Plug 'machakann/vim-highlightedyank'                        " Highlight yanks         [plugins/misc/highlightedyank.vim]
        Plug 'mhinz/vim-startify'                                   " Dashboard               [plugins/misc/startify.vim]
        Plug 'sakshamgupta05/vim-todo-highlight'                    " Highlight TODO/FIXME
        Plug 'szw/vim-maximizer'                                    " Zoom in/out of buffer   [plugins/misc/maximizer.vim]
        Plug 'tweekmonster/startuptime.vim'                         " Performance measurement
        Plug 'vimwiki/vimwiki'                                      " Notetaking
        Plug 'yuttie/comfortable-motion.vim'                        " Smooth scrolling        [plugins/misc/comfortable-motion.vim]

        " Must be last per official repo
        Plug 'ryanoasis/vim-devicons'                               " Pretty icons
        Plug 'kyazdani42/nvim-web-devicons'

        " YAK SHAVING
        Plug 'mfussenegger/nvim-dap'
        Plug 'theHamsta/nvim-dap-virtual-text'
        Plug 'glepnir/lspsaga.nvim'
        " farr
        " formatter

call plug#end()

" PLUGIN SETTINGS:
  " THEME:
    source $HOME/.config/nvim/settings/plugins/theme/galaxyline.vim
    source $HOME/.config/nvim/settings/plugins/theme/treesitter.vim

  " CODE:
    source $HOME/.config/nvim/settings/plugins/code/barbar.vim
    source $HOME/.config/nvim/settings/plugins/code/chadtree.vim
    source $HOME/.config/nvim/settings/plugins/code/closetag.vim
    source $HOME/.config/nvim/settings/plugins/code/compe.vim
    source $HOME/.config/nvim/settings/plugins/code/fzf.vim
    source $HOME/.config/nvim/settings/plugins/code/gitsigns.vim
    source $HOME/.config/nvim/settings/plugins/code/lspconfig.vim
    source $HOME/.config/nvim/settings/plugins/code/lspsaga.vim
    source $HOME/.config/nvim/settings/plugins/code/quick-scope.vim
    source $HOME/.config/nvim/settings/plugins/code/undotree.vim
    source $HOME/.config/nvim/settings/plugins/code/vim-test.vim

  " MISC:
    source $HOME/.config/nvim/settings/plugins/misc/comfortable-motion.vim
    source $HOME/.config/nvim/settings/plugins/misc/goyo.vim
    source $HOME/.config/nvim/settings/plugins/misc/peekup.vim
    source $HOME/.config/nvim/settings/plugins/misc/highlightedyank.vim
    source $HOME/.config/nvim/settings/plugins/misc/maximizer.vim
    source $HOME/.config/nvim/settings/plugins/misc/startify.vim
    source $HOME/.config/nvim/settings/plugins/misc/whichkey.vim


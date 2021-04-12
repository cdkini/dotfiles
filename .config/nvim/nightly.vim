let mapleader=" "
set nocompatible

" =====================================================================================================================
"                                                       DEFAULTS
" =====================================================================================================================
 
" OPTIONS:
" {{{
  syntax enable
  set splitbelow                            " Horizontal splits will automatically be below
  set noerrorbells                          " No annoying noises
  set cmdheight=2                           " Give more space for displaying messages
  set tabstop=4                             " Number of spaces a <Tab> is equivalent to
  set softtabstop=4                         " Number of spaces a <Tab> counts for while performing edits
  set shiftwidth=4                          " Number of spaces used for each step of autoindent
  set expandtab                             " Uses appropriate number of spaces to insert a <Tab> in insert mode
  set smarttab                              " <Tab> at start of a line inserts blanks to match surrounding code
  set autoindent                            " Aids with autoindenting
  set smartindent                           " Aids with autoindenting
  set number                                " Sets line numbering
  set relativenumber                        " Sets relative numbering for easy traversal
  set nowrap                                " Display long lines as just one line
  set ignorecase                            " Ignores case used in search query
  set smartcase                             " Disables ignorecase if any caps are used in search query
  set noswapfile                            " Prevents creation of .swp files, which store changes made to buffers
  set updatetime=20                         " Faster completion
  set timeoutlen=250                        " Time for a mapped sequence to complete (default is 1000ms)
  set formatoptions-=cro                    " Stop newline continuation of comments
  set clipboard=unnamedplus                 " Copy paste between vim and everything else
  set incsearch                             " Highlights search results as a search query is typed
  set colorcolumn=120                       " Sets ruler at 120 chars
  set bg=dark                               " Color scheme
  set nohlsearch                            " Remove highlighting after search
  set scrolloff=10                          " Improved view while scrolling
  set termguicolors                         " Enables certain visuals
  set completeopt=menu,menuone,noselect     " nvim LSP
  set shortmess+=c                          " nvim LSP
" }}}

" GENERAL REMAPS:
" {{{
  " Remap <Esc>
  inoremap jk <Esc>
  inoremap kj <Esc>

  " Navigate and create splits
  nnoremap <silent> <leader>h :call WinMove('h')<CR>
  nnoremap <silent> <leader>j :call WinMove('j')<CR>
  nnoremap <silent> <leader>k :call WinMove('k')<CR>
  nnoremap <silent> <leader>l :call WinMove('l')<CR>

  " Source/open vimrc
  nnoremap <leader>vs :source $MYVIMRC<CR>
  nnoremap <leader>ve :e $HOME/.config/nvim/nightly.vim<CR>
  nnoremap <leader>vi :PlugInstall<CR>
  nnoremap <leader>vc :PlugClean<CR>

  " cd to current buffer
  nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

  " TAB in general mode will move to text buffer
  nnoremap <silent> <TAB> :bnext<CR>
  nnoremap <silent> <S-TAB> :bprevious<CR>
" }}}

" TERMINAL SETTINGS:
" {{{
  " To map <Esc> to exit terminal-mode
  tnoremap jk <C-\><C-n>
  tnoremap kj <C-\><C-n>

  " Something
  let g:term_buf=0
  let g:term_win=0

  " Open integrated terminal at bottom of buffer
  nnoremap <silent> <leader>tt :call TermToggle(10)<CR>

  " Start terminal in insert mode
  au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" }}}

" Window movement shortcuts to move to the window in the direction shown, or create a new window
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

" Toggle terminal
function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

" =====================================================================================================================
"                                                       PLUGINS
" =====================================================================================================================

" Plugin Imports
call plug#begin('$HOME/.config/nvim/plugged')

    " THEME:
        Plug 'christianchiarulli/nvcode-color-schemes.vim'
        Plug 'mhartington/oceanic-next'
        Plug 'nvim-treesitter/nvim-treesitter'                      " v0.5.0 color support    [plugings/theme/treesitter.vim]
        Plug 'sainnhe/gruvbox-material'
        Plug 'vim-airline/vim-airline'                              " Tabline                 [plugins/theme/airline.vim]
        Plug 'vim-airline/vim-airline-themes'

    " CODE:
        Plug 'alvan/vim-closetag'                                   " Auto-close HTML/JSX     [plugins/code/closetag.vim]
        Plug 'gennaro-tedesco/nvim-peekup'                          " Register preview        [plugins/code/peekup.vim]
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }         " Fuzzy finding           [plugins/code/fzf.vim]
        Plug 'junegunn/fzf.vim'
        Plug 'mbbill/undotree'                                      " Undo tree               [plugins/code/undotree.vim]
        Plug 'mhinz/vim-signify'                                    " Gutter diffs
        Plug 'neoclide/coc.nvim', {'branch': 'release'}             " Intellisense            [plugins/code/coc.vim]
        Plug 'preservim/nerdtree'                                   " File explorer           [plugins/code/nerdtree.vim]
        Plug 'puremourning/vimspector'                              " Debugger                [plugins/code/vimspector.vim]
        Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 
        Plug 'tpope/vim-commentary'                                 " Comment out
        Plug 'tpope/vim-eunuch'                                     " UNIX file operations
        Plug 'tpope/vim-fugitive'                                   " Git commands
        Plug 'tpope/vim-repeat'                                     " Improved . support
        Plug 'tpope/vim-rhubarb'                                    " Go to GitHub
        Plug 'tpope/vim-surround'                                   " Surround editing
        Plug 'unblevable/quick-scope'                               " Improved in-line nav    [plugins/code/quick-scope.vim]
        Plug 'romgrk/barbar.nvim'                                   " Improved buffers        [plugins/code/barbar.vim]
        Plug 'vim-test/vim-test'                                    " Test runner

    " LANG:
        " Plug 'fatih/vim-go'                                         " Golang

    " MISC:
        Plug 'airblade/vim-rooter'                                  " Autochdir 
        Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
        Plug 'junegunn/goyo.vim'                                    " Distraction free mode   [plugins/misc/goyo.vim]
        Plug 'liuchengxu/vim-which-key'                             " Key previews            [plugins/misc/whichkey.vim]
        Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
        Plug 'mhinz/vim-startify'                                   " Dashboard               [plugins/misc/startify.vim]
        Plug 'szw/vim-maximizer'                                    " Zoom in/out of buffer   [plugins/misc/maximizer.vim]
        Plug 'tweekmonster/startuptime.vim'                         " Performance measurement
        Plug 'vimwiki/vimwiki'                                      " Notetaking
        Plug 'yuttie/comfortable-motion.vim'                        " Smooth scrolling        [plugins/misc/comfortable-motion.vim]
        Plug 'machakann/vim-highlightedyank'                        " Highlight yanks         [plugins/misc/highlightedyank.vim]
        Plug 'sakshamgupta05/vim-todo-highlight'

        " Must be last per official repo
        Plug 'ryanoasis/vim-devicons'                               " Pretty icons
        Plug 'kyazdani42/nvim-web-devicons'

call plug#end()


" Plugin Settings
  " Theme
    source $HOME/.config/nvim/settings/plugins/theme/airline.vim
    source $HOME/.config/nvim/settings/plugins/theme/treesitter.vim

  " Code
    source $HOME/.config/nvim/settings/plugins/code/barbar.vim
    source $HOME/.config/nvim/settings/plugins/code/closetag.vim
    source $HOME/.config/nvim/settings/plugins/code/coc.vim
    source $HOME/.config/nvim/settings/plugins/code/fzf.vim
    source $HOME/.config/nvim/settings/plugins/code/nerdtree.vim
    source $HOME/.config/nvim/settings/plugins/code/quick-scope.vim
    source $HOME/.config/nvim/settings/plugins/code/undotree.vim
    source $HOME/.config/nvim/settings/plugins/code/vim-test.vim
    source $HOME/.config/nvim/settings/plugins/code/vimspector.vim

  " Misc
    source $HOME/.config/nvim/settings/plugins/misc/comfortable-motion.vim
    source $HOME/.config/nvim/settings/plugins/misc/goyo.vim
    source $HOME/.config/nvim/settings/plugins/misc/highlightedyank.vim
    source $HOME/.config/nvim/settings/plugins/misc/maximizer.vim
    source $HOME/.config/nvim/settings/plugins/misc/startify.vim
    source $HOME/.config/nvim/settings/plugins/misc/whichkey.vim

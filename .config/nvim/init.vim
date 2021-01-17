let mapleader=" "
set nocompatible

" =====================================================================================================================
"                                                       DEFAULTS
" =====================================================================================================================

" OPTIONS:
" {{{
  syntax enable
"  set splitright                          " Vertical splits will automatically be to the right
  set splitbelow                          " Horizontal splits will automatically be below
  set noerrorbells                        " No annoying noises
  set cmdheight=2                         " Give more space for displaying messages
  set tabstop=4                           " Number of spaces a <Tab> is equivalent to
  set softtabstop=4                       " Number of spaces a <Tab> counts for while performing edits
  set shiftwidth=4                        " Number of spaces used for each step of autoindent
  set expandtab                           " Uses appropriate number of spaces to insert a <Tab> in insert mode
  set smarttab                            " <Tab> at start of a line inserts blanks to match surrounding code
  set autoindent                          " Aids with autoindenting
  set smartindent                         " Aids with autoindenting
  set number                              " Sets line numbering
  set relativenumber                      " Sets relative numbering for easy traversal
  set nowrap                              " Display long lines as just one line
  set ignorecase                          " Ignores case used in search query
  set smartcase                           " Disables ignorecase if any caps are used in search query
  set noswapfile                          " Prevents creation of .swp files, which store changes made to buffers
  set updatetime=50                      " Faster completion
  set timeoutlen=500                      " Time for a mapped sequence to complete (default is 1000ms)
  set formatoptions-=cro                  " Stop newline continuation of comments
  set clipboard=unnamedplus               " Copy paste between vim and everything else
  set incsearch                           " Highlights search results as a search query is typed
  set colorcolumn=120                     " Sets ruler at 120 chars
  set bg=dark                             " Color scheme
  set nohlsearch                          " Remove highlighting after search
  set scrolloff=10                        " Improved view while scrolling
  set hidden                              " Required by CoC
  set signcolumn=yes                      " Required by CoC
  set nobackup                            " Required by CoC
  set nowritebackup                       " Required by CoC
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
  nnoremap <leader>ve :e $MYVIMRC<CR>

  " cd to current buffer
  nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

  " Close current/all other buffers
  nnoremap <leader>dd :bd!<CR>
  nnoremap <leader>da :w <bar> %bd <bar> e# <bar> bd# <CR>
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

" FILE TREE SETTINGS:
" {{{
  let g:netrw_banner = 0
  let g:netrw_liststyle = 3
  let g:netrw_browse_split = 4
  let g:netrw_winsize = -28
  let g:netrw_preview = 1

  map <silent> <leader>te :call ToggleVExplorer()<CR>
" }}}
"
" =====================================================================================================================
"                                                       PLUGINS
" =====================================================================================================================
let g:ale_disable_lsp = 1

call plug#begin()
" {{{
" GENERAL:
  Plug 'lifepillar/vim-gruvbox8'                                  " 1. Color scheme
  Plug 'vim-airline/vim-airline'                                  " 2. Tabline
  Plug 'vim-airline/vim-airline-themes'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}                 " 3. Intellisense
  Plug 'sheerun/vim-polyglot'                                     " 4. Syntax highlighting
  Plug 'tpope/vim-eunuch'                                         " 5. UNIX file operations
  Plug 'tpope/vim-fugitive'                                       " 6. Git commands
  Plug 'mhinz/vim-signify'                                        " 7. Gutter diffs
  Plug 'yuttie/comfortable-motion.vim'                            " 8. Smooth scrolling
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }             " 9. Fuzzy finding
  Plug 'junegunn/fzf.vim'
  Plug 'tmsvg/pear-tree'                                          " 10. Auto pairs
  Plug 'junegunn/goyo.vim'                                        " 11. Distraction-free mode
  Plug 'tpope/vim-surround'                                       " 12. Surround editing
  Plug 'tpope/vim-commentary'                                     " 13. Comment out
  Plug 'dense-analysis/ale'                                       " 14. Linting
  Plug 'preservim/tagbar'                                         " 15. Tagbar
  Plug 'mbbill/undotree'                                          " 16. Undo tree
  Plug 'luochen1990/rainbow'                                      " 17. Rainbow brackets
  Plug 'vimwiki/vimwiki'

" LANGUAGE SPECIFIC:
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }              " Go

call plug#end()

" GRUVBOX:
" {{{
  colorscheme gruvbox8_soft
" }}}

" AIRLINE: Tabline
" {{{
  let g:airline_theme='wombat'
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tagbar#enabled = 0
  let g:airline#extensions#tabline#buffers_label = ''
  let g:airline#extensions#tabline#formatter = 'unique_tail'
" }}}

" COC:
" {{{
  " Set node path
  let g:coc_node_path='/usr/bin/nodejs'

  " GoTo code navigation.
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  " Show documentation in preview window.
  nnoremap <silent> K :call <SID>show_documentation()<CR>

  " Format selected text
  vmap <Leader>f <Plug>(coc-format-selected)
  nmap <Leader>f <Plug>(coc-format-selected)

  " Use tab for trigger completion with characters ahead and navigate.
  inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

  " <C-Space> to trigger completion.
  inoremap <silent><expr> <c-space> coc#refresh()

  " Use <CR> to comfirm completion.
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

  " Make <CR> auto-select the first completion item and notify coc.nvim to
  " format on enter, <cr> could be remapped by other vim plugin
  inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

  " Better nav for intellisense
  inoremap <expr> <c-j> ("\<C-n>")
  inoremap <expr> <c-k> ("\<C-p>")

  " Navigate diagnostics
  nmap <silent> <c-e> <Plug>(coc-diagnostic-next)

" COMFORTABLE MOTION:
" {{{
  let g:comfortable_motion_scroll_down_key = "j"
  let g:comfortable_motion_scroll_up_key = "k"
" }}}

" FZF:
" {{{
  " Ctrl + P uses fzf to search project files
  nnoremap <silent> <C-p> :GFiles<CR>
  nnoremap <silent> <Leader><C-p> :Files<CR>

  " Ctrl + / uses fzf to search all lines in open buffers
  nnoremap <silent> <C-_> :Lines<CR>

  " Leader + pb uses fzf to view open buffers
  nnoremap <silent> <Leader>pb :Buffers<CR>

  " Leader + ps uses ripgrep to grep project
  nnoremap <silent> <Leader>ps :Rg<CR>
" }}}

" PEAR TREE:
" {{{
  let g:pear_tree_repeatable_expand=0
" }}}

" GOYO:
" {{{
  let g:goyo_width=120
" }}}

" ALE:
" {{{
  let b:ale_fixers=["prettier"]
  let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
  let g:ale_fix_on_save=1
  let g:ale_set_highlights=0
" }}}

" TAGBAR:
" {{{
  let g:tagbar_width=30
  nmap <leader>tb :TagbarToggle<CR>
" }}}

" UNDOTREE:
" {{{
  let g:undotree_WindowLayout=2
  nnoremap <leader>tu :UndotreeToggle<CR>
" }}}

" RAINBOW:
" {{{
  let g:rainbow_active=1
" }}}

" GOLANG:
" {{{
  let g:go_def_mode='gopls'
  let g:go_info_mode='gopls'
" }}}

" =====================================================================================================================
"                                                       HELPERS
" =====================================================================================================================

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

" Toggle netrw file explorer
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction

" CoC - Show documentation for cursor text
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
   execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
   call CocActionAsync('doHover')
  else
   execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" CoC - Helper used in tab completion
function! s:check_back_space() abort
 let col = col('.') - 1
 return !col || getline('.')[col - 1]  =~# '\s'
endfunction

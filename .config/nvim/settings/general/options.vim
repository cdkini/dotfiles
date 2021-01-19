" OPTIONS:
" {{{
  syntax enable
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
  set termguicolors                       " Enables certain visuals
  set hidden                              " Required by CoC
  set signcolumn=yes                      " Required by CoC
  set nobackup                            " Required by CoC
  set nowritebackup                       " Required by CoC
" }}}

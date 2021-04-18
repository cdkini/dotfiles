" Leader Key Maps

nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Timeout
let g:which_key_timeout = 50

let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

let g:which_key_map =  {}
let g:which_key_sep = '→'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


let g:which_key_map[';'] = [ ':Startify'            , 'dashboard' ]
let g:which_key_map['"'] = [ '<Plug>PeekupOpen'     , 'registers' ]
let g:which_key_map['='] = [ '<C-w>='               , 'align splits' ]

let g:which_key_map.h = 'which_key_ignore'
let g:which_key_map.j = 'which_key_ignore'
let g:which_key_map.k = 'which_key_ignore'
let g:which_key_map.l = 'which_key_ignore'
let g:which_key_map.f = 'which_key_ignore'
let g:which_key_map['q'] = { 'name': 'which_key_ignore' }
let g:which_key_map['c'] = { 'name': 'which_key_ignore' }
let g:which_key_map['r'] = { 'name': 'which_key_ignore' }
let g:which_key_map['q'] = { 'name': 'which_key_ignore' }

" Group mappings

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '>' : [':BufferMoveNext'                    , 'move next'],
      \ '<' : [':BufferMovePrevious'                , 'move prev'],
      \ 'b' : [':BufferPick'                        , 'pick'],
      \ 'd' : [':BufferClose'                       , 'delete current'],
      \ 'n' : [':BufferNext'                        , 'next'],
      \ 'p' : [':BufferPrevious'                    , 'prev'],
      \ '?' : ['Buffers'                            , 'list'],
      \ }

" d is for debug 
" TODO: OPEN TO SWITCH TO NVIM DAP
let g:which_key_map.d = {
      \ 'name' : '+debug' ,
      \ 'c' : [':call vimspector#Continue()'                                         , 'continue'],
      \ 'd' : [':call vimspector#Launch()'                                           , 'open'],
      \ 'q' : [':call vimspector#Reset()'                                            , 'exit'],
      \ 'j' : [':call vimspector#StepOver()'                                         , 'step over'],
      \ 'k' : [':call vimspector#StepOut()'                                          , 'step out'],
      \ 'l' : [':call vimspector#StepInto()'                                         , 'step into'],
      \ 'r' : [':call vimspector#RunToCursor()'                                      , 'run to cursor'],
      \ 'R' : [':call vimspector#Restart()'                                          , 'restart'],
      \ '?' : [':call AddToWatch()'                                                  , 'add to watch'],
      \ 'b' : {
        \ 'name' : '+breakpoint' ,
        \ 's' : [':call vimspector#ToggleBreakpoint()'                               , 'standard'],
        \ 'c' : [':call vimspector#ToggleConditionalBreakpoint()'                    , 'conditional'],
        \ 'D' : [':call vimspector#ClearBreakpoints()'                               , 'delete all'],
        \ },
      \ 'w' : {
        \ 'name' : '+window' ,
        \ 'c' : [':call GotoWindow(g:vimspector_session_windows.code)'               , 'code'],
        \ 't' : [':call GotoWindow(g:vimspector_session_windows.tagpage)'            , 'tagpage'],
        \ 'v' : [':call GotoWindow(g:vimspector_session_windows.variables)'          , 'vars'],
        \ 'w' : [':call GotoWindow(g:vimspector_session_windows.watches)'            , 'watches'],
        \ 's' : [':call GotoWindow(g:vimspector_session_windows.stack_trace)'        , 'stack trace'],
        \ 'o' : [':call GotoWindow(g:vimspector_session_windows.output)'             , 'output'],
        \ },
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'B':  [':Gblame'                                                            , 'blame file'],
      \ 'b':  ['<cmd>lua require"gitsigns".blame_line()<CR>'                        , 'blame hunk'],
      \ 'c':  [':Gcommit'                                                           , 'commit'],
      \ 'g':  [':G'                                                                 , 'status'],
      \ 'h':  [':Gbrowse'                                                           , 'github'],
      \ 'l':  [':Glog'                                                              , 'log'],
      \ 'p':  ['<cmd>lua require"gitsigns".preview_hunk<CR>'                        , 'preview hunk'],
      \ 's':  ['<cmd>lua require"gitsigns".stage_hunk()<CR>'                        , 'stage hunk'],
      \ 'u':  ['<cmd>lua require"gitsigns".undo_stage_hunk()<CR>'                   , 'undo stage hunk'],
      \ }

" s is for search 
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'b' : [':BLines'       , 'current buffer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Files'        , 'files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'cmd history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'p' : [':Rg'           , 'project'],
      \ }

" t is for toggle
let g:which_key_map.t = {
      \ 'name' : '+toggle' ,
      \ 'd' : [':Lspsaga show_line_diagnostics<CR>'                       , 'diagnostics'],
      \ 't' : [':call TermToggle(10)'                                     , 'terminal'],
      \ 'u' : [':UndoTreeToggle'                                          , 'undotree'],
      \ 'e' : [':CHADopen'                                                , 'explorer'],
      \ 'm' : [':MaximizerToggle'                                         , 'maximizer'],
      \ 'z' : [':Goyo'                                                    , 'zen'],
      \ }

" T is for test
let g:which_key_map.T = {
      \ 'name' : '+test' ,
      \ 'n' : [':TestNearest'         , 'nearest'],
      \ 'f' : [':TestFile'            , 'file'],
      \ 's' : [':TestSuite'           , 'suite'],
      \ 'l' : [':TestLast'            , 'last'],
      \ 'v' : [':TestVisit'           , 'visit'],
      \ }

" v is for vim
let g:which_key_map.v = {
      \ 'name' : '+vim' ,
      \ 'e' : [':e $HOME/.config/nvim/init.vim'      , 'edit'],
      \ 's' : [':source $MYVIMRC'                       , 'source'],
      \ 'i' : [':PlugInstall'                           , 'install'],
      \ 'c' : [':PlugClean'                             , 'clean'],
      \ }

" w is for wiki
let g:which_key_map.w = {
      \ 'name' : '+wiki' ,
      \ 'w' : [':<Plug>VimwikiIndex'         , 'curr'],
      \ 't' : [':<Plug>VimwikiTabIndex'      , 'tab'],
      \ 'i' : [':<Plug>VimwikiDiaryIndex'    , 'diary'],
      \ 's' : [':<Plug>VimwikiUISelect'      , 'select'],
      \ 'd' : [':<Plug>VimwikiDeleteFile'    , 'delete'],
      \ 'r' : [':<Plug>VimwikiRenameFile'    , 'rename'],
      \ }


" call which_key#register('<Space>', "g:which_key_map")
autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')

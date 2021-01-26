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

  " Remove highlights
  nnoremap <silent><leader>n :noh<CR>
" }}}

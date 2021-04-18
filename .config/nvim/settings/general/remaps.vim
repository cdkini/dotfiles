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
  nnoremap <leader>ve :e $HOME/.config/nvim/init.vim<CR>
  nnoremap <leader>vi :PlugInstall<CR>
  nnoremap <leader>vc :PlugClean<CR>

  " cd to current buffer
  nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

  " TAB in general mode will move to text buffer
  nnoremap <silent> <TAB> :bnext<CR>
  nnoremap <silent> <S-TAB> :bprevious<CR>
" }}}

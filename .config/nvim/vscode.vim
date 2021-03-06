call plug#begin('$HOME/.config/nvim/plugged')
    Plug 'asvetliakov/vscode-neovim' 
call plug#end()

xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine

if exists('g:vscode')
    " VSCode extension
    source $HOME/.config/nvim/vscode.vim
else
    " Standard editor
    source $HOME/.config/nvim/nightly.vim
endif


# Setup fzf
# ---------
if [[ ! "$PATH" == */home/ckini/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/ckini/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/ckini/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/ckini/.fzf/shell/key-bindings.bash"

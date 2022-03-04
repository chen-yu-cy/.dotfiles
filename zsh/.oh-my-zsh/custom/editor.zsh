EDITOR="vim"

# Enable Ctrl-x-e to edit command line
autoload -U edit-command-line
# Emacs style
 bindkey -e
#zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line
bindkey '^e' edit-command-line
# Vi style:
# bindkey -v
# zle -N edit-command-line
# bindkey -M vicmd e edit-command-line

# OR use 'fc' command to fix the last command in the editor

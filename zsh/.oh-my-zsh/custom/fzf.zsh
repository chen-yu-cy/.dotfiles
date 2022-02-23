export FZF_COMPLETION_TRIGGER='\'

# check if fd is installed
if which fd &> /dev/null; then
  export FZF_DEFAULT_COMMAND='fd --hidden --no-ignore --type f'
  export FZF_ALT_C_COMMAND='fd --hidden --no-ignore --type d . $HOME'
fi



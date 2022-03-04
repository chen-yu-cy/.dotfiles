# shortcuts
alias s="cat"
alias c="lfcd"
alias v="vim"
alias lg="lazygit"
alias ld="lazydocker"
alias zshrc='vim ~/.zshrc'
alias typora="open -a typora"

# move to my favorite directories
alias dotfiles="cd $HOME/.dotfiles"
alias zshdotfiles="cd $HOME/.dotfiles/zsh/.oh-my-zsh/custom"

# conditional aliases
if which bat &> /dev/null; then
    alias cat="bat"
fi


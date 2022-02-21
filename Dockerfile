FROM alpine:latest
RUN apk add --no-cache git stow vim zsh curl

# install oh-my-zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# setup vim
RUN git clone https://github.com/chen-yu-cy/.dotfiles.git ~/.dotfiles && ~/.dotfiles/setup_vim.sh

# setup zsh
RUN ~/.dotfiles/setup_zsh.sh

ENTRYPOINT ["/bin/zsh"]


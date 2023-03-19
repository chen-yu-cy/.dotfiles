FROM alpine:latest
RUN apk add --no-cache git stow vim zsh curl ripgrep bat bash fzf ranger neovim

# copy current dir to ~/.dotfiles
WORKDIR /root
RUN mkdir -p .dotfiles
COPY . .dotfiles/

# install oh-my-zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

WORKDIR /root/.dotfiles
# setup zsh
RUN ./setup_zsh.sh
# setup vim
RUN ./setup_vim.sh


WORKDIR /root
ENTRYPOINT ["/bin/zsh"]


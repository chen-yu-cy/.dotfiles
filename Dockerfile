FROM alpine:latest
RUN apk add --no-cache git stow vim zsh curl

RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN git clone https://github.com/chen-yu-cy/.dotfiles.git ~/.dotfiles && ~/.dotfiles/setup_vim.sh

ENTRYPOINT ["/bin/zsh"]


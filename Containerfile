FROM alpine

RUN apk update

RUN apk add \
  build-base \
  bash \
  gzip \
  wget \
  less \
  chezmoi \
  fish \
  starship \
  nnn \
  git \
  ripgrep \
  neovim \
  nodejs \
  npm

RUN chezmoi init --apply adambubenicek
RUN nvim --headless "+Lazy! sync" +qa

WORKDIR /root

ENV LANG=en_us.UTF-8
ENV TERM=xterm-256color
ENV SHELL=/usr/bin/fish

CMD fish


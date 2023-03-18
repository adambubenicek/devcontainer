FROM alpine

RUN apk update

RUN apk add build-base less chezmoi fish starship nnn git ripgrep neovim
RUN chezmoi init --apply adambubenicek

WORKDIR /root

ENV LANG=en_us.UTF-8
ENV TERM=xterm-256color

CMD fish


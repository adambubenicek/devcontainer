FROM alpine

RUN apk update

RUN apk add build-base tmux fish starship nnn git helix tree-sitter-grammars \
	&& hx --grammar fetch && hx --grammar build

RUN apk add nodejs npm && npm i -g \
	typescript-language-server \
	svelte-language-server

WORKDIR /root

ENV LANG=en_us.UTF-8
ENV TERM=xterm-256color

COPY .config .config

CMD tmux


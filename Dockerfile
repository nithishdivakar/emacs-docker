FROM alpine:3.9
RUN apk add --no-cache emacs bash git make
ENV HOME /home
COPY emacs_evil ${HOME}/.emacs.d/evil
COPY _dot_emacs ${HOME}/.emacs
COPY .gitconfig /etc/gitconfig
WORKDIR ${HOME}/workspace
ENTRYPOINT ["bash"]

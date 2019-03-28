FROM alpine:3.9
RUN apk add --no-cache emacs bash git
ENV HOME /home
COPY emacs_evil ${HOME}/.emacs.d/evil
COPY _dot_emacs ${HOME}/.emacs
WORKDIR ${HOME}/workspace
ENTRYPOINT ["bash"]

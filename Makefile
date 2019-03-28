
CONTAINER_TAG=emacs-container
HOME=/home

all: build run

build:
	docker build -t ${CONTAINER_TAG} .
run:
	docker run -v ${PWD}/scheme:${HOME}/workspace -it ${CONTAINER_TAG} 

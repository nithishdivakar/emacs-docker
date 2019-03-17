
CONTAINER_TAG=emacs-container

all: build run

build:
	docker build -t ${CONTAINER_TAG} .
run:
	docker run -v ${PWD}/scheme:/home/workspace -it ${CONTAINER_TAG} 

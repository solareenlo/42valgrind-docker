FROM ubuntu:20.04

LABEL "maintainer"="solareenlo <solareenlo@protonmail.com>"
LABEL "repository"="https://github.com/solareenlo/42valgrind-docker"

RUN apt-get update && \
	apt-get upgrade -y &&  \
	apt-get install build-essential -y && \
	DEBIAN_FRONTEND=noninteractive apt-get install valgrind -y && \
	rm -fr /var/lib/apt/lists/*

WORKDIR /code

ENTRYPOINT ["valgrind --leak-check=full --show-leak-kinds=all ./a.out"]

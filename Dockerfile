FROM ubuntu:20.04

LABEL "maintainer"="solareenlo <solareenlo@protonmail.com>"
LABEL "repository"="https://github.com/solareenlo/42valgrind-docker"

RUN apt-get update && \
	apt-get upgrade -y &&  \
	DEBIAN_FRONTEND=noninteractive apt-get install -y \
		build-essential \
		valgrind \
		curl \
		clang && \
	rm -fr /var/lib/apt/lists/*

WORKDIR /code

ENTRYPOINT ["valgrind --leak-check=full --show-leak-kinds=all ./a.out"]

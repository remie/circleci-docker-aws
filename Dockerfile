FROM ubuntu:latest

LABEL maintainer "r.bolte@gmail.com"

## Install prerequisites, Docker CE and AWS SDK Cli
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y; \
	apt-get install -y \
	apt-utils \
	python \
	python-pip \
	curl; \
	curl -fsSL get.docker.com | /bin/sh; \
  	pip install --upgrade awscli s3cmd python-magic;

CMD ["/bin/bash"]
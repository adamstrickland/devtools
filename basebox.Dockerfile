FROM ubuntu:artful

MAINTAINER Adam Strickland <adam.strickland@gmail.com>

RUN apt-get update
RUN apt-get install -y git man curl \
                       openssh-server openssh-client \
                       ruby ruby-dev \
                       nginx \
                       sqlite \
                       libxml2 libxml2-dev \
                       g++ make gcc perl \
                       phantomjs nodejs \
                       libpq-dev \
                       vim silversearcher-ag tmux \
                       fortune cowsay

                       # CMake pbcopy libxslt-dev

RUN mkdir -p /usr/src
WORKDIR /usr/src

ENTRYPOINT ["/bin/bash"]

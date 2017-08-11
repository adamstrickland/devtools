FROM adamstrickland/basebox:latest

MAINTAINER Adam Strickland <adam.strickland@gmail.com>

RUN git clone https://github.com/adamstrickland/dotfiles /root/dotfiles
WORKDIR /root/dotfiles
RUN git pull origin master --rebase
RUN ./install.rb

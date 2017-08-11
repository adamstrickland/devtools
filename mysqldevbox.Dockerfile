FROM adamstrickland/devbox:latest

MAINTAINER Adam Strickland <adam.strickland@gmail.com>

RUN \curl -sSL https://get.rvm.io | bash -s stable
RUN echo "source /etc/profile.d/rvm.sh" >> /root/.bashrc.local
RUN rvm install 1.9.2-p320 && rvm default 1.9.2-p320 && rvm use 1.9.2-p320
RUN gem install bundler rake

WORKDIR /tmp
RUN curl https://downloads.mysql.com/archives/get/file/mysql-5.5.30-linux2.6-x86_64.tar.gz > mysql-5.5.30tar.gz
RUN gunzip mysql-5.5.30.tar.gz && tar xvf mysql-5.5.30.tar
WORKDIR /tmp/mysql-5.5.30
RUN scripts/unattended_install
RUN mysql -u root -p -s "CREATE DATABASE graftek_web_development;"



# RUN apt-get install -y mysql-server libmysqlclient-dev libaio1

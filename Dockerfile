FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update
RUN apt-get -y install git
RUN apt-get -y install vim
RUN apt-get -y install nano
COPY .nanorc /root/.nanorc
COPY .gitconfig /root/.gitconfig

# install ansible
RUN apt-get -y install python3
apt-get -y install python3-pip
pip3 install ansible

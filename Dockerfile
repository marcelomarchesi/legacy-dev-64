FROM i386/ubuntu:14.04

RUN apt-get update 
RUN apt-get install -y libncurses5-dev build-essential git unrar bison gettext texinfo wget unzip flex gperf subversion autoconf zlib1g libattr1-dev python npm bc

# For compilation of SAGEM RSTIW384
RUN apt-get install -y gawk

# For compilation of Kaon NS1300
RUN apt-get install -y default-jre

# For KAON VM1110 image generation
RUN apt-get install -y wine cmake pkg-config

# For SAGEM DSTIH78/RSTIH89 image generation
RUN apt-get install -y mtd-utils

RUN npm config set strict-ssl false
RUN npm install -g grunt-cli
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN sudo locale-gen "en_US.UTF-8"
RUN sudo sudo dpkg-reconfigure locales


#USER docker 
#RUN ssh-keygen -q -t rsa -N '' -f /root/.ssh/id_rsa
#COPY ./runserver.sh /tmp/
#CMD [ "/tmp/runserver.sh" ]

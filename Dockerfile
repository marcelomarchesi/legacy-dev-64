FROM ubuntu:14.04

RUN apt-get update 
RUN apt-get install -y libncurses5-dev build-essential git unrar bison gettext texinfo wget unzip flex gperf subversion autoconf zlib1g libattr1-dev python lib32z1-dev npm bc

# For compilation of SAGEM RSTIW385
RUN apt-get install -y lib32stdc++6 gawk

# For compilation of Kaon NS1300
RUN apt-get update
RUN apt-get install -y default-jre

RUN npm config set strict-ssl false
RUN npm install -g grunt-cli
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN sudo locale-gen "en_US.UTF-8"
RUN sudo sudo dpkg-reconfigure locales


#USER docker 

#RUN ssh-keygen -q -t rsa -N '' -f /root/.ssh/id_rsa
#COPY ./runserver.sh /tmp/
#CMD [ "/tmp/runserver.sh" ]

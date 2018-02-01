FROM ubuntu:14.04

RUN apt-get update -y
RUN apt-get install -y libncurses5-dev build-essential git unrar bison gettext texinfo wget unzip flex gperf subversion autoconf zlib1g libattr1-dev python lib32z1-dev 
RUN apt-get install bc

#USER docker 

#RUN ssh-keygen -q -t rsa -N '' -f /root/.ssh/id_rsa
#COPY ./runserver.sh /tmp/
#CMD [ "/tmp/runserver.sh" ]

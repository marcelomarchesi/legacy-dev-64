FROM ubuntu:14.04

RUN apt-get update -y
RUN apt-get install -y build-essential git unrar bison gettext texinfo wget unzip flex gperf subversion autoconf zlib1g libattr1-dev python lib32z1-dev

#RUN ssh-keygen -q -t rsa -N '' -f /root/.ssh/id_rsa
#COPY ./runserver.sh /tmp/
#CMD [ "/tmp/runserver.sh" ]

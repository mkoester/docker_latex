FROM ubuntu:14.04.1
MAINTAINER Mirko Köster <it@mirkokoester.de>

RUN echo "deb http://archive.ubuntu.com/ubuntu trusty multiverse" >> /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty-updates multiverse" >> /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty-security multiverse" >> /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty-backports multiverse" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install texlive-full -y

RUN mkdir latex
WORKDIR latex

ENTRYPOINT ["/usr/bin/latexmk"]

CMD ["--help"]

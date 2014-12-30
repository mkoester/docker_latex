FROM ubuntu:14.10
MAINTAINER Mirko Köster <it@mirkokoester.de>

RUN echo "deb http://archive.ubuntu.com/ubuntu utopic multiverse" >> /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu utopic-updates multiverse" >> /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu utopic-security multiverse" >> /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu utopic-backports multiverse" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install texlive-full -y

RUN mkdir latex
WORKDIR latex

ENTRYPOINT ["/usr/bin/latexmk"]

CMD ["--help"]

FROM ubuntu:16.10
MAINTAINER Mirko Köster <it@mirkokoester.de>

RUN echo "deb http://archive.ubuntu.com/ubuntu yakkety multiverse" >> /etc/apt/sources.list && \
echo "deb http://archive.ubuntu.com/ubuntu yakkety-updates multiverse" >> /etc/apt/sources.list && \
echo "deb http://archive.ubuntu.com/ubuntu yakkety-security multiverse" >> /etc/apt/sources.list && \
echo "deb http://archive.ubuntu.com/ubuntu yakkety-backports multiverse" >> /etc/apt/sources.list && \
apt-get update && \
apt-get upgrade -y && \
apt-get install texlive-full python-pygments fonts-freefont-ttf -y && \
mkdir latex
WORKDIR latex

ENTRYPOINT ["/usr/bin/latexmk"]

CMD ["--help"]

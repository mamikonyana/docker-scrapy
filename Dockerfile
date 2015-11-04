FROM phusion/baseimage:0.9.17

ENV HOME /root

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update --fix-missing && apt-get install -y \
  curl \
  git \
  python-dev \
  python-pip

RUN pip install scrapy==1.0.3 ipython==4.0.0

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

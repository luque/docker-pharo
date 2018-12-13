FROM ubuntu:precise

MAINTAINER Leandro Di Tommaso <leandro.ditommaso@mikroways.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && \
    apt-get install --no-install-recommends -qy \
                        curl \
                        ia32-libs \
                        unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD ./run-pharo.sh /bin/
ADD ./run-pharo-headless.sh /bin/
RUN chmod +x /bin/run-pharo*.sh

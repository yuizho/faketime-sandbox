FROM tomcat:10

RUN apt-get update; \
    apt-get install -y build-essential git;

WORKDIR /tmp
RUN git clone https://github.com/wolfcw/libfaketime.git
WORKDIR /tmp/libfaketime/src
RUN make install
ENV LD_PRELOAD='/usr/local/lib/faketime/libfaketime.so.1'

# Java プログラムを実行する場合は DONT_FAKE_MONOTONIC が必要
# https://scrapbox.io/yuizho-tech/libfaketime%E3%81%AEREADME%E3%82%92%E3%82%88%E3%82%80%E3%82%88
ENV DONT_FAKE_MONOTONIC=1

COPY target/faketime-sandbox-1.0-SNAPSHOT.war $CATALINA_HOME/webapps/faketime.war
# BASE IMAGE
FROM wurstmeister/kafka

# Environment Variables
ENV LIBRDKAFKA_VERSION=0.11.5

# Installing librdkafka
RUN apk add --no-cache --update g++ make && \
 wget https://github.com/edenhill/librdkafka/archive/v$LIBRDKAFKA_VERSION.tar.gz -O /tmp/librdkafka-$LIBRDKAFKA_VERSION.tar.gz && \
 cd /tmp && \
 tar zxf librdkafka-$LIBRDKAFKA_VERSION.tar.gz && \
 cd librdkafka-$LIBRDKAFKA_VERSION && \
 ./configure --prefix=/usr && \
 make && \
 make install

# Installing and running kafka_influxdb
RUN apk add --no-cache --update gcc musl-dev python3 python3-dev && \
 pip3 install kafka_influxdb && \
 apk del g++ gcc make musl-dev python3-dev

# Use "exec" form so that it runs as PID 1 (useful for graceful shutdown)
CMD ["start-kafka.sh"]

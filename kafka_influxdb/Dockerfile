# BASE IMAGE
FROM wurstmeister/kafka

# ENVIRONMENT VARIABLES
ENV LIBRDKAFKA_VERSION=0.11.5

# INSTALLING

## librdkafka
RUN apk add --no-cache --update g++ make && \
	wget https://github.com/edenhill/librdkafka/archive/v$LIBRDKAFKA_VERSION.tar.gz -O /tmp/librdkafka-$LIBRDKAFKA_VERSION.tar.gz && \
	cd /tmp && \
	tar zxf librdkafka-$LIBRDKAFKA_VERSION.tar.gz && \
	cd librdkafka-$LIBRDKAFKA_VERSION && \
	./configure --prefix=/usr && \
	make && \
	make install

## kafka_influxdb
RUN apk add --no-cache --update gcc musl-dev python3 python3-dev && \
	pip3 install kafka_influxdb && \
	apk del g++ gcc make musl-dev python3-dev

# COMMAND
CMD ["start-kafka.sh"]

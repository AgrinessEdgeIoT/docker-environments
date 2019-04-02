# BASE IMAGE
FROM node:8-alpine

# DEPENDENCIES INSTALLATION
RUN npm i -g @adonisjs/cli && \
	apt-get install -y python3 python3-pip python3-dev && \
	pip3 install boto3==1.3.0 influxdb

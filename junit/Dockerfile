# BASE IMAGE
FROM openjdk:8u181-slim

# INSTALLATION
WORKDIR /app
COPY ./run.sh .
RUN chmod +x ./run.sh && \
	apt-get update && \
	apt-get install -y wget && \
	wget -O junit.jar https://github.com/junit-team/junit4/releases/download/r4.12/junit-4.12.jar && \
	wget -O hamcrest-core.jar search.maven.org/remotecontent?filepath=org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar

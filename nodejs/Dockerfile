# BASE IMAGE
FROM node:8.11.1

# Dockerfile Author / Maintainer
MAINTAINER Matheus Mota <matheus@agrinessedge.com>

# Dependencies
RUN apt-get update
RUN apt-get install -y zip python3 python3-pip python3-dev curl wget
RUN pip3 install boto3==1.3.0 influxdb

# AdonisJs (https://adonisjs.com/)
RUN npm i -g @adonisjs/cli

# SonarQube Scanner (https://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner)
RUN curl --insecure -OL https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.2.0.1227-linux.zip
RUN unzip sonar-scanner-cli-3.2.0.1227-linux.zip -d /opt/
RUN ln -s /opt/sonar-scanner-3.2.0.1227-linux/bin/sonar-scanner /usr/bin/sonar-scanner
RUN rm sonar-scanner-cli-3.2.0.1227-linux.zip

# Newman (https://github.com/postmanlabs/newman)
RUN npm i -g newman

# Instanbul (https://www.npmjs.com/package/istanbul)
RUN npm i -g istanbul

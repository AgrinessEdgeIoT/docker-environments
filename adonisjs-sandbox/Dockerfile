# BASE IMAGE
FROM node:8-alpine

# SonarQube Scanner
RUN apk --update --no-cache add curl unzip && \
	curl --insecure -OL ./sonarscanner.zip "https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.2.0.1227-linux.zip" && \
	unzip sonarscanner.zip -d /opt/ && \
	ln -s /opt/sonar-scanner-3.2.0.1227-linux/bin/sonar-scanner /usr/bin/sonar-scanner && \
	rm sonarscanner.zip

# AdonisJs, Newman, Instanbul
RUN npm i -g @adonisjs/cli && \
	npm i -g newman && \
	npm i -g istanbul

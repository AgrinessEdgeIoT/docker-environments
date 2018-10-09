# BASE IMAGE
FROM php:7.1-apache

# DEPENDENCIES
RUN apt-get update && \
	apt-get install -y gnupg && \
	curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
	apt-get install -y git libpq-dev nodejs zip && \
	docker-php-ext-install pdo pdo_pgsql pgsql

# Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
	php -r "if (hash_file('SHA384', 'composer-setup.php') === '93b54496392c062774670ac18b134c3b3a95e5a5e5c8f1a9f115f203b75bf9a129d5daa8ba6a13e2cc8a1da0806388a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
	php composer-setup.php --install-dir=/usr/bin --filename composer && \
	php -r "unlink('composer-setup.php');"

# SonarQube Scanner
RUN curl --insecure -OL https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.2.0.1227-linux.zip && \
	unzip sonarscanner.zip -d /opt/ && \
	ln -s /opt/sonar-scanner-3.2.0.1227-linux/bin/sonar-scanner /usr/bin/sonar-scanner && \
	rm sonarscanner.zip

# AdonisJs, Newman, Instanbul
RUN npm i -g @adonisjs/cli && \
	npm i -g newman && \
	npm i -g istanbul

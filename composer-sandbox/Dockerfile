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
	php -r "if (hash_file('sha384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
	php composer-setup.php && \
	php -r "unlink('composer-setup.php');"

# SonarQube Scanner
RUN curl --insecure -OL https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.2.0.1227-linux.zip && \
	unzip sonar-scanner-cli-3.2.0.1227-linux.zip -d /opt/ && \
	ln -s /opt/sonar-scanner-3.2.0.1227-linux/bin/sonar-scanner /usr/bin/sonar-scanner && \
	rm sonar-scanner-cli-3.2.0.1227-linux.zip

# Newman, Instanbul
RUN npm i -g newman && \
	npm i -g istanbul

# BASE IMAGE
FROM php:7.2-apache

# DEPENDENCIES
RUN apt-get update && \
	apt-get install -y gnupg && \
	curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
	apt-get install -y git libpq-dev nodejs zip && \
	docker-php-ext-install pdo pdo_pgsql pgsql

# Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
	php -r "if (hash_file('sha384', 'composer-setup.php') === 'a5c698ffe4b8e849a443b120cd5ba38043260d5c4023dbf93e1558871f1f07f58274fc6f4c93bcfd858c6bd0775cd8d1') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
	php composer-setup.php --install-dir=/usr/bin --filename composer && \
	php -r "unlink('composer-setup.php');"

#Install PostGresSQL Client
RUN apt-get update && mkdir /usr/share/man/man1 && mkdir /usr/share/man/man7 && \
	apt-get install postgresql-client -y && rm -r /usr/share/man/man7 && rm -r /usr/share/man/man1

# SonarQube Scanner
RUN curl --insecure -OL https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.3.0.1492-linux.zip && \
	unzip sonar-scanner-cli-3.3.0.1492-linux.zip -d /opt/ && \
    ln -s /opt/sonar-scanner-3.3.0.1492-linux/bin/sonar-scanner /usr/bin/sonar-scanner && \
    rm sonar-scanner-cli-3.3.0.1492-linux.zip

# Newman, Instanbul
RUN npm i -g newman && \
	npm i -g istanbul

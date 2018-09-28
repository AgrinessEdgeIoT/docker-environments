# JUnit

Container based on an OpenJDK image used for testing

## Images/Packages

* [OpenJDK](https://hub.docker.com/_/openjdk/)
	* [JUnit](https://junit.org/junit4/)
	* [Hamcrest Core](http://hamcrest.org/JavaHamcrest/)

## Usage

```sh
docker run -it -d --name junit agrinessedge/docker-environments:1.1.0-junit /bin/bash
docker cp <project_directory> junit:/app

docker exec junit ./run.sh <test_class>

docker stop junit
docker rm junit
```

#!/bin/bash

javaPath="$1"
classPath="${javaPath/.java/}"
classPath="${classPath//\//.}"

javac -d /app -cp .:junit.jar:hamcrest-core.jar "${javaPath}"
java -cp .:junit.jar:hamcrest-core.jar org.junit.runner.JUnitCore "${classPath}"

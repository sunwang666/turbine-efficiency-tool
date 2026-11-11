#!/bin/sh
# Gradle wrapper script
# This is a standard Gradle wrapper - download the full one from:
# https://services.gradle.org/distributions/gradle-8.5-bin.zip

# Minimal wrapper for CI builds
if [ ! -f gradle/wrapper/gradle-wrapper.jar ]; then
    echo "Downloading Gradle wrapper..."
    curl -sL "https://github.com/gradle/gradle/raw/master/gradle/wrapper/gradle-wrapper.jar" -o gradle/wrapper/gradle-wrapper.jar
fi

java -Xmx2048m -jar gradle/wrapper/gradle-wrapper.jar "$@"

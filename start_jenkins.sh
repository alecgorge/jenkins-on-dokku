#!/usr/bin/env bash

if [[ ! -f jenkins.war ]]; then
    wget "http://mirrors.jenkins-ci.org/war/latest/jenkins.war"
fi

java -jar jenkins.war --httpPort=$PORT --ajp13Port=-1 --httpsPort=-1
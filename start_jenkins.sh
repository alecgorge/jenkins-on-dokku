#!/usr/bin/env bash

export JENKINS_HOME=/opt/jenkins/home

WAR_PATH=/opt/jenkins/jenkins.war

if [[ ! -f $WAR_PATH ]]; then
    wget "http://mirrors.jenkins-ci.org/war/latest/jenkins.war" -O $WAR_PATH
fi

java -jar $WAR_PATH --httpPort=$PORT --ajp13Port=-1 --httpsPort=-1

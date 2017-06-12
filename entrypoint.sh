#!/bin/bash
set -e -x

echo "start JENKINS"
source /etc/default/jenkins
exec $JAVA $JAVA_ARGS -jar $JENKINS_WAR "$@"
#exec "$@"

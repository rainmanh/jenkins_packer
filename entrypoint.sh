#!/bin/bash
set -e

echo "start JENKINS"
source /etc/default/jenkins

exec $JAVA $JAVA_ARGS -jar $JENKINS_WAR "$@"
#exec "$@"

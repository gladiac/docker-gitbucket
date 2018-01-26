#!/bin/sh

JAVA_HOME="/usr/lib/jvm/default-jvm/jre"
JAVA="${JAVA_HOME}/bin/java"

set -e

mkdir -p "/var/lib/gitbucket"
cd "/var/lib/gitbucket"

exec ${JAVA} \
    ${JAVA_ARGS} \
    -jar "/opt/gitbucket/gitbucket.jar" \
    ${GITBUCKET_ARGS}

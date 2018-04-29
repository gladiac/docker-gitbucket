FROM frolvlad/alpine-oraclejre8:latest

ENV GITBUCKET_VERSION=4.24.0 \
    JAVA_ARGS="-server -Xms256M -Xmx1024M -XX:ParallelGCThreads=2" \
    GITBUCKET_ARGS="--port=80 --gitbucket.home=/var/lib/gitbucket"

RUN mkdir -p "/opt/gitbucket" && \
    cd "/opt/gitbucket" && \
    wget "https://github.com/gitbucket/gitbucket/releases/download/${GITBUCKET_VERSION}/gitbucket.war" -O gitbucket.jar

VOLUME ["/var/lib/gitbucket"]
EXPOSE 80

COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD []

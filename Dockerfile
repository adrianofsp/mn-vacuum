FROM ghcr.io/graalvm/graalvm-ce:latest

#https://www.graalvm.org/22.0/docs/getting-started/container-images/
#FROM ubuntu:20.04
#ARG GRAAL_VERSION=20.3.0
#ARG JAVA_VERSION=11
#ARG GRAAL_URL=https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-${GRAAL_VERSION}/graalvm-ce-java${JAVA_VERSION}-linux-amd64-${GRAAL_VERSION}.tar.gz
#
#ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en' LC_ALL='en_US.UTF-8'
#
#RUN apt-get update \
#    && apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales binutils procps bash libudev1 fonts-dejavu-core\
#    && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
#    && locale-gen en_US.UTF-8 \
#    && rm -rf /var/lib/apt/lists/*
#
#COPY slim-java* /usr/local/bin/
#
#RUN set -eux; \
#    export DEBIAN_FRONTEND=noninteractive; \
#    curl --retry 3 -Lfso /tmp/graalvm.tar.gz ${GRAAL_URL}; \
#    mkdir -p /opt/java/graalvm; \
#    cd /opt/java/graalvm; \
#    tar -xf /tmp/graalvm.tar.gz --strip-components=1; \
#    export PATH="/opt/java/graalvm/bin:$PATH"; \
#    /usr/local/bin/slim-java.sh /opt/java/graalvm; \
#    rm -rf /var/lib/apt/lists/*; \
#    rm -rf /tmp/graalvm.tar.gz;
#
#ENV JAVA_HOME=/opt/java/graalvm \
#    PATH="/opt/java/graalvm/bin:$PATH"
#
#CMD java -version
#FROM alpine
#ARG GRAALVM=graalvm-ce-java17-linux-aarch64-22.0.0.2.tar.gz
#
#
##WORKDIR /library/java
##https://github.com/lustefaniak/docker-graalvm/blob/master/Dockerfile
#
#ENV JAVA_HOME /library/java/graalvm-ce-java17-22.0.0.2
#ENV PATH $JAVA_HOME/bin:$PATH
#
#ADD https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-22.0.0.2/$GRAALVM .
#
#RUN apk --no-cache add ca-certificates wget gcc zlib zlib-dev libc-dev
#
#RUN tar -xzf $GRAALVM && \
#    rm -f $GRAALVM
#
#CMD ["/bin/sh"]
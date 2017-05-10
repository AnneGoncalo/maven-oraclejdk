FROM persapiens/oraclejdk:8u131
MAINTAINER Marcelo Fernandes <persapiens@gmail.com>

ENV MAVEN_HOME /usr/share/maven

ARG MAVEN_VERSION=3.5.0

RUN mkdir -p /usr/share/maven \
  && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz \
    | tar -xzC /usr/share/maven --strip-components=1 \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

# build on the top of Java image
FROM arm64v8/openjdk:11.0-jdk-oracle
# JMeter Version
ARG JMETER_VERSION="5.4.3"
# Download and unpack the JMeter tar file
#RUN yum install wget
RUN dnf install wget
ADD https://eternallybored.org/misc/wget/releases/old/wget-1.21.3-winarm64.zip 
# RUN  apt-get update \
#     && apt-get install -y wget \
#     && rm -rf /var/lib/apt/lists/*

RUN mkdir /workspace && cd /workspace \
    && wget https://mirrors.estointernet.in/apache//jmeter/binaries/apache-jmeter-${JMETER_VERSION}.tgz \
    && tar xzf apache-jmeter-${JMETER_VERSION}.tgz \
    && rm apache-jmeter-${JMETER_VERSION}.tgz
# Create a symlink to the jmeter process in a normal bin directory
RUN ln -s /opt/apache-jmeter-${JMETER_VERSION}/bin/jmeter /usr/local/bin
# Copying custom property file
COPY user.properties /opt/apache-jmeter-${JMETER_VERSION}/bin/user.properties
# Indicate the default command to run
CMD jmeter
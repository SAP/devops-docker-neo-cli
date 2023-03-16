FROM maven:3.5-jdk-8-alpine

LABEL org.opencontainers.image.source=https://github.com/SAP/devops-docker-neo-cli
LABEL org.opencontainers.image.description="An image for the SAP neo cli"
LABEL org.opencontainers.image.licenses=Apache-2.0

RUN  apk add --no-cache bash && \
     mvn com.sap.cloud:neo-javaee7-wp-maven-plugin:1.129.8:install-sdk -DsdkInstallPath=sdk -Dincludes=tools/**,license/**,sdk.version && \
     chmod -R 777 sdk && \
     ln -s /sdk/tools/neo.sh /usr/bin/neo.sh && \
     rm -rf /var/lib/apt/lists/*

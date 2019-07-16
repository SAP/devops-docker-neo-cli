FROM maven:3.5-jdk-8-alpine

RUN  apk add --no-cache bash && \
     mvn com.sap.cloud:neo-javaee7-wp-maven-plugin:1.53.8:install-sdk -DsdkInstallPath=sdk -Dincludes=tools/**,license/**,sdk.version && \
     chmod -R 777 sdk && \
     ln -s /sdk/tools/neo.sh /usr/bin/neo.sh && \
     rm -rf /var/lib/apt/lists/*

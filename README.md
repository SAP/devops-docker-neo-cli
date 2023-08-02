# Neo Tools Command Line Interface (CLI)

[![REUSE status](https://api.reuse.software/badge/github.com/SAP/devops-docker-neo-cli)](https://api.reuse.software/info/github.com/SAP/devops-docker-neo-cli)

This [_Dockerfile_](https://docs.docker.com/engine/reference/builder/) can be used in _Continuous Delivery_ (CD) pipelines for SAP development projects.
The image is optimized for use with project ["Piper"](https://github.com/SAP/jenkins-library) on [Jenkins](https://jenkins.io/).
Docker containers simplify your CD tool setup, encapsulating tools and environments that are required to execute pipeline steps.

If you want to learn how to use project "Piper" please have a look at [the documentation](https://github.com/SAP/jenkins-library/blob/master/README.md).
Introductory material and a lot of SAP scenarios not covered by project "Piper" are described in our [Continuous Integration Best Practices](https://developers.sap.com/tutorials/ci-best-practices-intro.html).


## About this repository

Dockerfile for an image with SAP Cloud Platform Tools for Neo.
This image is intended to be used in Jenkins pipelines.

## Download

This image is published to Docker Hub and can be pulled via the command

```
docker pull ppiper/neo-cli
```

## Build

To build this image locally, open a terminal in the directory of the Dockerfile an run

```
docker build -t ppiper/neo-cli .
```

## Usage

Recommended usage of this image is via [`neoDeploy`](https://sap.github.io/jenkins-library/steps/neoDeploy/) pipeline step.

For using the `neo.sh` tool via this image, it can be invoked like in this command

```
docker run ppiper/neo-cli neo.sh help
```

## Licensing

Copyright 2017-2021 SAP SE or an SAP affiliate company and devops-docker-neo-cli contributors. Please see our [LICENSE](LICENSE) for copyright and license information. Detailed information including third-party components and their licensing/copyright information is available [via the REUSE tool](https://api.reuse.software/info/github.com/SAP/devops-docker-neo-cli).

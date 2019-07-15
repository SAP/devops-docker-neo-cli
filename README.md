## Neo Tools Command Line Interface (CLI)

This [_Dockerfiles_](https://docs.docker.com/engine/reference/builder/) can be used in _Continuous Delivery_ (CD) pipelines for SAP development projects. 
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

## Testing

### Running as a Service

See `.travis.yml` file for configuration.

Configure the following variables (secrets)

* `CX_INFRA_IT_CF_USERNAME` (user name for deployment to SAP Cloud Platform)
* `CX_INFRA_IT_CF_PASSWORD` (password for deployment to SAP Cloud Platform)

### Running locally

Docker is required, and at least 4 GB of memory assigned to Docker.

```bash
export CX_INFRA_IT_CF_USERNAME="myusername"
export CX_INFRA_IT_CF_PASSWORD="mypassword"
./runTests.sh
```

## License

Copyright (c) 2018 SAP SE or an SAP affiliate company. All rights reserved.
This file is licensed under the Apache Software License, v. 2 except as noted
otherwise in the [LICENSE file](https://github.com/SAP/devops-docker-neo-cli/blob/master/LICENSE).

Please note that Docker images can contain other software which may be licensed under different licenses. This License file is also included in the Docker image. For any usage of built Docker images please make sure to check the licenses of the artifacts contained in the images.

This image contains the [SAP Cloud Platform Tools for Neo](https://mvnrepository.com/artifact/com.sap.cloud/neo-javaee6-wp-maven-plugin).
These tools are licensed under the [SAP DEVELOPER LICENSE AGREEMENT](https://tools.hana.ondemand.com/developer-license-3_1.txt).
This License file is also included in the `/sdk` folder in the Docker image.
For any usage of built Docker images please make sure to check the licenses of the artifacts contained in the images.

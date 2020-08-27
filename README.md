## Neo Tools Command Line Interface (CLI)

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

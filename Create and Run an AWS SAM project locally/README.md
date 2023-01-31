# Create and Run an AWS SAM project locally ( Lambda + API Gateway )

## Table of Contents

- [Getting Started](#getting_started)
- [Prerequisites](#prerequisites)
- [Building AWS SAM project](#build)
- [Starting API Gateway](#start)
- [Triggering Lambda function](#trigger)
- [Author](#author)

## Getting Started <a name = "getting_started"></a>

These instructions will walk you through creating and testing your AWS SAM project locally.

### Prerequisites <a name = "prerequisites"></a>

* [Install AWS SAM CLI](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install-linux.html)
* Configure AWS command line interface credentials.

```sh
$ aws configure
AWS Access Key ID [None]: ********************
AWS Secret Access Key [None]: ********************
Default region name [None]: **-****-*
Default output format [None]: ****
```

## Building AWS SAM project <a name = "build"></a>

Build the AWS SAM project package.

```sh
$ cd aws-sam
$ sam build
```

## Starting API Gateway <a name = "start"></a>

Start the API Gateway locally.

```sh
$ sam local start-api
```

## Triggering Lambda function <a name = "trigger"></a>

Triggering the Lambda function through API Gateway.

```sh
$ curl [RESPONSE_PATH_FROM_PREVIOUS_STEP]
# curl http://127.0.0.1:3000/hello
```

## Author <a name = "author"></a>

- Jeffrey Wang ( jeffrey02120212@gmail.com )
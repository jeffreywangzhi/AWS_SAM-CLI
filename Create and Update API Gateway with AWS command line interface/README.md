# Create and update api gateway with AWS command line interface

## Table of Contents

- [Getting Started](#getting_started)
- [Prerequisites](#prerequisites)
- [Creating new api](#creating)
- [Updating api](#updating)
- [Editing api schema](#editing)
- [Author](#author)

## Getting Started <a name = "getting_started"></a>

These instructions will walk you through creating a new api and updating your api with AWS command line interface.

### Prerequisites <a name = "prerequisites"></a>

Configure AWS command line interface credentials.

```sh
$ aws configure
AWS Access Key ID [None]: ********************
AWS Secret Access Key [None]: ********************
Default region name [None]: **-****-*
Default output format [None]: ****
```

## Creating new api <a name = "creating"></a>

A step by step guide that tells you how to create an api with AWS command line interface.

1. Enter your api schema in **api-schema.json** file according the instructions in [Editing api schema](#editing).

2. Edit create script in **create-api.sh** file, Enter the schema file path for ***--body*** option.

```sh
#!/bin/bash
aws apigatewayv2 import-api --body file://api-schema.json
```

3. Run **create-api.sh** file to upload your api schema.

```sh
$ ./create-api.sh
```

4. Check up your new api in AWS console.

## Updating api <a name = "updating"></a>

A step by step guide that tells you how to update **qe-dev-api** with AWS command line interface.

1. Update the api schema in **dev-api-schema.json** file according the instructions in [Editing api schema](#editing).

2. Edit update script in **update-api.sh** file, Enter the schema file path for ***--body*** option.

```sh
#!/bin/bash
aws apigatewayv2 reimport-api --api-id XXXXX --body file://dev-api-schema.json
```

3. Run **update-api.sh** file to upload your api schema.

```sh
$ ./update-api.sh
```

4. Check up your updated api in AWS console.

## Editing api schema <a name = "editing"></a>

The following instructions will explain how to add paths and HTTP methods into an api gateway.

- Add a new path to api gateway: **/examplePath**
```json
"paths" : {
    "/examplePath":{

    }
}
```
- Add a new HTTP method to path: /examplePath **/GET**
```json
"paths" : {
    "/examplePath" : {
        "get" : {
        "responses" : {
          "default" : {
            "description" : "" //custom description
          }
        },
        "x-amazon-apigateway-integration" : {
          "payloadFormatVersion" : "2.0",
          "type" : "aws_proxy",
          "httpMethod" : "POST",
          "uri" : "", //lambda function arn
          "connectionType" : "INTERNET"
        }
      },
    }
}
```

## Author <a name = "author"></a>

- Jeffrey Wang (jeffrey.wanggg@gmail.com)
# Create and update lambda function with AWS command line interface

## Table of Contents

- [Getting Started](#getting_started)
- [Prerequisites](#prerequisites)
- [Creating lmabda function](#creating)
- [Updating lmabda function](#updating)
- [Running the tests](#tests)
- [Author](#author)

## Getting Started <a name = "getting_started"></a>

These instructions will walk you through creating a new lambda function and updating your lambda function with AWS command line interface.

### Prerequisites <a name = "prerequisites"></a>

Configure AWS command line interface credentials.

```sh
$ aws configure
AWS Access Key ID [None]: ********************
AWS Secret Access Key [None]: ********************
Default region name [None]: **-****-*
Default output format [None]: ****
```

## Creating lmabda function <a name = "creating"></a>

A step by step guide that tells you how to create a lambda function with AWS command line interface.

1. Enter your lambda function code in **6.create-new-lambda/index.js** file, you can adjust the **file extension (.js)** according to the programming language you use.

```js
// nodejs example code
exports.handler = async (event) => {
  const response = {
      statusCode: 200,
      body: JSON.stringify('Hello from Lambda!'),
  };
  return response;
};

```

2. Edit update script in **create-lambda.sh** file.
- Enter the function name for ***--function-name*** option.
- Enter the runtime for ***--runtime*** option.
- Enter the execution role ARN for ***--role*** option.

```sh
#!/bin/bash
zip  -r function.zip index.js
aws lambda create-function --function-name XXXXXX --runtime nodejs14.x --handler index.handler --role XXXXXX --zip-file fileb://function.zip
```

3. Run **create-lambda.sh** file to upload your lambda function package.

```sh
$ ./create-lambda.sh
```

4. Check up your new lambda function in AWS console.

5. Please see [Running the tests](#tests) for instructions on how to test your new lambda function.

## Updating lmabda function <a name = "updating"></a>

A step by step guide that tells you how to update lambda function with AWS command line interface.

1. Update lambda function code in **index.js** file.

```js
exports.handler = function (event, context, callback) {
  // Enter your code here
}
```

2. Edit update script in **update-lambda.sh** file, enter the function name for ***--function-name*** option.

```sh
#!/bin/bash
zip  -r function.zip index.js package-lock.json  package.json  node_modules/*
aws lambda update-function-code --function-name ******* --zip-file fileb://function.zip
```

3. Run **update-lambda.sh** file to replace the original lambda function on AWS cloud.

```sh
$ ./update-lambda.sh
```

4. Check up your updated lambda function in AWS console.

5. Please see [Running the tests](#tests) for instructions on how to test your updated lambda function.

## Running the tests <a name = "tests"></a>

Test your lambda function in AWS Lambda console and repeat the steps #1 ~ #4 in [Updating lmabda function](#updating) if adjustments are needed.

## Author <a name = "author"></a>

- Jeffrey Wang (jeffrey.wanggg@gmail.com)
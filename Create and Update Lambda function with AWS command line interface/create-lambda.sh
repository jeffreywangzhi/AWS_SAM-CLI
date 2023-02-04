zip  -r function.zip index.js
aws lambda create-function --function-name XXXXXX --runtime nodejs14.x --handler index.handler --role XXXXXX --zip-file fileb://function.zip
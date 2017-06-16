#!/bin/bash

BUCKET=$1

rm -rf ./target
mkdir target

aws cloudformation package \
    --template-file ./src/template.yaml \
    --s3-bucket $BUCKET \
    --output-template-file ./target/packaged-template.yaml

aws cloudformation deploy \
    --template-file ./target/packaged-template.yaml \
    --stack-name Sonic-DOM-Passthrough \
    --capabilities CAPABILITY_IAM \
    --parameter-overrides S3Bucket=$BUCKET
#!/bin/bash

BUCKET=$1

aws cloudformation package \
    --template-file ./sam/template.yaml \
    --s3-bucket $BUCKET \
    --output-template-file ./sam/packaged-template.yaml
    
aws cloudformation deploy \
    --template-file ./sam/packaged-template.yaml \
    --stack-name Sonic-DOM-Passthrough \
    --capabilities CAPABILITY_IAM \
    --parameter-overrides S3Bucket=$BUCKET
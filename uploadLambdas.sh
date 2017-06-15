#!/bin/bash

zip -r ./lambdaZip.zip ./lambda

aws s3 cp ./lambdaZip.zip s3://sonic-s3-trace-bucket/
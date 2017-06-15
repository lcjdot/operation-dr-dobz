#!/bin/bash

aws cloudformation package \
    --template-file ./sam/template.yaml \
    --s3-bucket sonic-s3-trace-bucket \
    --output-template-file ./sam/packaged-template.yaml
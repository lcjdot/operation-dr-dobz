Generating a SAM template with the following commands and parameters

aws cloudformation package \
    --template-file ./sam/template.yaml \
    --s3-bucket bucket-name \
    --output-template-file packaged-template.yaml
    
Where:
    bucket-name: sonic-s3-trace-bucket
    
    
To Deploy:

aws cloudformation deploy \
    --template-file ./sam/packaged-template.yaml \
    --stack-name Sonic-DCP-Passthrough \
    --capabilities CAPABILITY_IAM
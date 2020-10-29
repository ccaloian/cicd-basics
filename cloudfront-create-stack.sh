#! /bin/bash

S3_BUCKET_NAME="cicd-basics-udacity"

aws cloudformation deploy \
    --template-file cloudfront-infra.yml \
    --stack-name production-distro \
    --parameter-overrides PipelineID="${S3_BUCKET_NAME}" \
    --tags project=udapeople &

import pulumi
from pulumi_aws import aws

# Create S3 Bucket
s3 = aws.s3.Bucket('bucket-test-pulumi')
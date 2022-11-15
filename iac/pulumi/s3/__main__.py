import pulumi
import pulumi_aws as aws

bucket_v2 = aws.s3.BucketV2('bucket-test-pulumi', bucket='bucket-test-pulumi')
public_access_block = aws.s3.BucketPublicAccessBlock("this",
    bucket=bucket_v2.id,
    block_public_acls=True,
    block_public_policy=True,
    ignore_public_acls=True,
    restrict_public_buckets=True)

# Export the name of the bucket
pulumi.export('bucket_name', bucket_v2.id)
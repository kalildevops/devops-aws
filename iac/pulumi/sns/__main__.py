import pulumi
from pulumi_aws import sns

# Create SNS topic
bucket = sns.Topic("topic-test-pulumi")


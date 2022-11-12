import pulumi
from pulumi_aws import sns

# Create SNS topic
sns_topic = sns.Topic("topic-test-pulumi")


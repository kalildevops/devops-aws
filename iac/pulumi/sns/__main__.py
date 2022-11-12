import pulumi
from pulumi_aws import aws

# Create SNS topic
sns_topic = aws.sns.Topic('topic-test-pulumi', {
    name='topic-test-pulumi'
})
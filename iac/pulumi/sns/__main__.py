import pulumi
import pulumi_aws as aws

# Create SNS topic
sns_topic = aws.sns.Topic('topic-test-pulumi', name='topic-test-pulumi')